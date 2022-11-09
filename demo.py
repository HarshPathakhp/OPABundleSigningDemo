import sys
import subprocess
import os

def archive(bundle_dir):
    subprocess.check_output(f"tar -czf {bundle_dir}.tar.gz {bundle_dir}", shell=True)

def sign_and_archive_bundle(bundle_dir, private_pem_path):
    subprocess.check_output(f"opa sign --signing-key {private_pem_path} --signing-plugin _default --output-file-path {bundle_dir} --bundle {bundle_dir}", shell=True)
    archive(bundle_dir)

def cleanup(bundles):
    if len(bundles) == 0:
        raise Exception("list of bundles can't be empty!")
    for bundle in bundles:
        subprocess.check_output(f"rm -rf {bundle}.tar.gz", shell=True)
        subprocess.check_output(f"rm -rf {os.path.join(bundle, '.signatures.json')}", shell=True)

if __name__ == "__main__":
    if len(sys.argv) <= 1:
        raise Exception("Provide options!")
    option = sys.argv[1]
    if option == "cleanup":
        cleanup(sys.argv[2:])
    elif option == "archive":
        archive(sys.argv[2])
    elif option == "sign":
        sign_and_archive_bundle(sys.argv[2], sys.argv[3])
    else:
        raise Exception("Invalid option!")
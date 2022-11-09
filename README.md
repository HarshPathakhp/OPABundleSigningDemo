# OPABundleSigningDemo

## Setup
1. Install Python 3.7+
2. Install Opa Binary (using 0.46.1 at present). Opa binary should be added to PATH.

## How to demo Discovery and Signing
1. Run `python3 demo.py sign bundle1 private_bundle.pem`. Do this similarly for bundle2.
2. Run `python3 demo.py sign discovery private.pem`. Notice that we are using a different key for discovery bundle.
3. Run `python3 demo.py archive utils`. We are not signing the utils bundle.
4. After you have followed above steps, there will be 4 compressed tars created.
5. On separate terminals, run `python3 -m http.server 8000`. Similarly run it again with port `8001`. This will create simple http based bundle servers.
6. Run `opa run -s -c config.yml`. Please ensure that all bundles get activated. You can also query `/v1/data` to see documents for each package.
7. As an exercise, try signing your regular bundles with different private keys, and notice that OPA will fail to verify the bundles. 
8. Finally, to remove the archives and signature files from your bundles, run `python3 demo.py cleanup bundle1 bundle2 utils discovery`

package discovery

config = {
    "bundles": {
        "bundle1": {
            "resource": "bundle1.tar.gz",
            "service": "bundle_service1",
            "signing": {
                "keyid": "bundle_public_key"
            }
        },
        "bundle2": {
            "resource": "bundle2.tar.gz",
            "service": "bundle_service1",
            "signing": {
                "keyid": "bundle_public_key"
            }
        },
        "utils": {
            "resource": "utils.tar.gz",
            "service": "bundle_service2",
        }
    },
    "keys": {
        "bundle_public_key": {
            "key": "-----BEGIN PUBLIC KEY-----\nMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAxBRKrkRo2crTnVhW5ajE\ngTTU1ZVl8hk5yk4PXu/XlJRy0vViZNV8VVJ1KU3LxQCcamLTuQcdZu02GcJE50fO\n8HAQTExGj+om1RpxGtS6kWSWy4PxR5OuKoKw5Gbt/9SYxGC1/jccjCVNGf4MuCyf\n4wEHXNYRZxNXtIv0avy4yMeFkRKhOjEZsUBQICS+KyQqbn3ORgB6U5CytOeX0zjL\nIo3fJk3uBFfRmM/e1Xq76/zQ0zE+GjrsOc0yXOYTLBAMhmZ6oILkNwfoXy3jOOMH\n3IV3D0wNT9+fUGEyp+T6i7ec9+SmOOj313yvpnwW6rioBgQNWKE2D0oQxPxLflB8\nDwIDAQAB\n-----END PUBLIC KEY-----"
        }
    }
}
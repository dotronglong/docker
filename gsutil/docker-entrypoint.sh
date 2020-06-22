#!/bin/bash
set -e

CRED=false

if [[ ! -z "$SERVICE_KEY" ]]; then
  CRED=true
fi

BOTO=~/.boto
if [[ "$CRED" == "true" ]]; then
  cat <<EOT > $BOTO
[Credentials]
gs_service_key_file = ${SERVICE_KEY}
[Boto]
https_validate_certificates = True
[GoogleCompute]
[GSUtil]
content_language = en
default_api_version = 2
[OAuth2]
EOT
fi

exec "$@"
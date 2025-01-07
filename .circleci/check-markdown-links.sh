set -xeuo pipefail
script_dirpath="$(cd "$(dirname "${0}")" && pwd)"
root_dirpath="$(dirname "${script_dirpath}")"

config_filepath="$(mktemp)"
cat << EOF > "${config_filepath}"
{
    "retryOn429": true,
    "replacementPatterns": []
}
EOF

markdown-link-check --verbose --config "${config_filepath}" "${root_dirpath}"

exit "${exit_code}"

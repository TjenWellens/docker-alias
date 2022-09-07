###
# terraform
###

#_not intended for manual use
#export AWS_ACCESS_KEY_ID=op://my-vault/AWS_CLI/username
#export AWS_SECRET_ACCESS_KEY=op://my-vault/AWS_CLI/credential
#alias _tf_credentials=" -e AWS_ACCESS_KEY_ID -e AWS_SECRET_ACCESS_KEY "
alias _tf_credentials='if [ -z "${GOOGLE_OAUTH_ACCESS_TOKEN}" ]; then echo ""; else echo "-e GOOGLE_OAUTH_ACCESS_TOKEN=\"${GOOGLE_OAUTH_ACCESS_TOKEN}\""; fi'

# terraform plan
alias terraform='op run -- docker run --rm -it --name terraform-v ~/.config/gcloud:/root/.config/gcloud -v $(pwd):/workspace -w /workspace $(_tf_credentials) hashicorp/terraform:light'

# tf
#> terraform plan
alias tf='op run -- docker run --rm -it --name terraform-v ~/.config/gcloud:/root/.config/gcloud -v $(pwd):/workspace -w /workspace $(_tf_credentials) --entrypoint /bin/sh hashicorp/terraform:light'


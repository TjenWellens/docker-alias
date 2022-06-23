###
# terraform
###

#_not intended for manual use
alias _tf_credentials='if [ -z "${GOOGLE_OAUTH_ACCESS_TOKEN}" ]; then echo ""; else echo "-e GOOGLE_OAUTH_ACCESS_TOKEN=\"${GOOGLE_OAUTH_ACCESS_TOKEN}\""; fi'

# terraform plan
alias terraform='docker run --rm -it --name terraform -v ~/.aws:/root/.aws -v ~/.config/gcloud:/root/.config/gcloud -v $(pwd):/workspace -w /workspace $(_tf_credentials) hashicorp/terraform:light'

# tf
#> terraform plan
alias tf='docker run --rm -it --name terraform -v ~/.aws:/root/.aws -v ~/.config/gcloud:/root/.config/gcloud -v $(pwd):/workspace -w /workspace $(_tf_credentials) --entrypoint /bin/sh hashicorp/terraform:light'


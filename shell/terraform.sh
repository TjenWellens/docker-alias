###
# terraform
###

#_not intended for manual use
alias _tf_credentials='if [ -z "${GOOGLE_APPLICATION_CREDENTIALS}" ]; then echo ""; else echo "/workspace/${GOOGLE_APPLICATION_CREDENTIALS}"; fi'

# terraform plan
alias terraform='docker run --rm -it --name terraform -v ~/.aws:/root/.aws -v ~/.config/gcloud:/root/.config/gcloud -v $(pwd):/workspace -w /workspace -e GOOGLE_APPLICATION_CREDENTIALS=$(_tf_credentials) hashicorp/terraform:light'

# tf
#> terraform plan
alias tf='docker run --rm -it --name terraform -v ~/.aws:/root/.aws -v ~/.config/gcloud:/root/.config/gcloud -v $(pwd):/workspace -w /workspace -e GOOGLE_APPLICATION_CREDENTIALS=$(_tf_credentials) --entrypoint /bin/sh hashicorp/terraform:light'

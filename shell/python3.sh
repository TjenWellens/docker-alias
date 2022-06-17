###
# python
###

alias python='docker run --rm -it -v $(pwd):/usr/src/app -w /usr/src/app --entrypoint python python:3'
alias pip='docker run --rm -it -v $(pwd):/usr/src/app -w /usr/src/app --entrypoint pip python:3'


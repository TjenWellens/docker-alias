###
# node
###

# npm install
alias npm='docker run --rm -it -v $(pwd):/usr/src/app -w /usr/src/app --entrypoint npm node:16'

# node index.js
alias node='docker run --rm -it -v $(pwd):/usr/src/app -w /usr/src/app --entrypoint node node:16'

# js
# > npm install
alias js='docker run --rm -it -v $(pwd):/usr/src/app -w /usr/src/app --entrypoint /bin/sh node:16'


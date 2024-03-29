# docker-alias

## divenv setup
### prerequisites:
- [direnv](https://direnv.net/) (`brew install direnv`)
- realpath (`brew install coreutils`)
- copy [.direnvrc](./direnv/.direnvrc) to your home folder
- 1password cli

### project setup
- create a file `.envrc` in your project root
- copy the direnv/alias/xxx.envrc contents for the tools you need
```shell 
cat direnv/alias/node.envrc >>> .envrc
cat direnv/alias/terraform.envrc >>> .envrc
```
For security reasons, every change to `.envrc` requires you to approve those changes (you'll see it complain about it)
```shell
direnv allow
```

### using the aliases
use it like you normally would
```shell
npm install
terraform plan
...
```

### Tips

#### place your .envrc as close to your code as possible
do this
```
# good example
.
├── module_1
│   ├── code
│   │   └── .envrc  <<<<
│   └── infra
│       └── .envrc  <<<<
└── module_2
    ├── code
    │   └── .envrc  <<<<
    └── infra
        └── .envrc  <<<<
```

instead of this
```
# bad example
.
├── .envrc          <<<<
├── module_1
│   ├── code-js
│   └── infra
└── module_2
    ├── code-java
    └── infra
```

## (legacy) shell setup as alternative to direnv setup
```
source shell/xxx.sh
```

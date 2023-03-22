# nirvai terraform modules

- [racexp docs](https://github.com/nirv-ai/racexp)

## TLDR

- we output everything by default, ensure to mark your vars as sensitive where appropriate
- to access attributes in [parent module](https://developer.hashicorp.com/terraform/language/values/outputs#accessing-child-module-outputs):

> module.moduleName.resourceTypeAbbreviation.attributeName

> ` module.mysubnet.sb.cidr_block`

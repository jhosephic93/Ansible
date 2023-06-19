# Ansible - Demo01

- Pre-requisitos.
  - Install Ansible en local
  - Install Terraform en local
  - Actualizar las variables de VPC y Subnet
  - KeyPair en local
  - AWS Credentials en local con el perfil jhoseph

## Guia

1. Proceso

```bash
terraform init
terraform plan
terraform apply -auto-approve
```

2. Explicacion.

- El manifiesto de Terraform (main.tf) en **provisioner "local-exec"** se ejecuta en mi local, llamando a ansible.yml, mismo que ejecuta los roles (carpeta roles/nginx/tasks)
- Dato adicional cuando se ejecuta por segunda vez terraform apply, eliminar el Server EC2 y lo vuelve a crear.

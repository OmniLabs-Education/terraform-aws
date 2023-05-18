## Init

```bash
  terraform init
```

### Flags

- -backend=true
- -backend-config="backend.hcl"


Esse é o primeiro comando que utilizamos na execução do Terraform sendo responsável por iniciar a execução do nosso arquivo. Nesse passo é verificado o provider que será utilizado e realizado todos os downloads das dependências necessárias.

## Plan

```bash
  terraform plan
```

Nesse comando, o Terraform irá ler todo o arquivo de recursos (main.tf) e criará um plano de execução, ou seja, o Terraform irá gerar um novo documento contendo quais recursos precisam ser criados, modificados ou removidos. Nessa etapa o terraform não executará nenhum tipo de ação no provedor de nuvem. Sendo possível usar a flag "-out="teste"" para criar um arquivo com tudo que foi informado no plan.

### Flags

- -var-file=""
- out="tfplan.out" gera arquivo com dados informados no plan

## Apply

```bash
  terraform apply
```

Esse é o comando responsável por aplicar realmente o plano de execução gerado no passo anterior, ou seja, ele vai acessar sua conta no provedor de nuvem e provisionará todos os recursos que foi definido. Sendo possível selecionar um arquivo de "plan" para aplicar as mudanças.

### Flags

- -auto-approve
- -var-file=""
- "tfplan.out" executa o apply usando arquivo de saída do plan usando o comando -out

## Show

```bash
  terraform show
```

Mostra o plano de execução do terraform. Este comando para as Instâncias/Objetos em execução e destruindo todos os recursos que foram criados durante o processo de criação.

### Flags

- json

## Destroy

```bash
  terraform destroy
```

Mantenha o código do Terraform e use o comando terraform destroy para limpar (encerrar/destruir) o ambiente: $ terraform destroy An execution plan has been generated and is shown below.

## Validate

```bash
  terraform validate
```

Valida se o código está com sintaxe correta

## Fmt

```bash
  terraform fmt
```

### Flags

- -recursive

Deixa o código em um formato que o terraform recomenda

## Console

```bash
  terraform console
```

Console interativo podendo listar valores e atributos de recursos por exemplo "aws_s3_bucket_object.this"

## Import

```bash
  terraform import
```

O Terraform oferece suporte à importação de recursos usando o subcomando terraform import . O comando import usa dois argumentos: o endereço e o ID do recurso. O endereço do recurso é um identificador que aponta para uma instância de recurso em uma configuração.

Exemplo: ``` terraform import aws_s3_bucket.manual meu-bucket-criado-1234 ```. Usado na pasta `terraform-basico/05-interpolacao-locals-outputs`

[Documentação terraform](https://registry.terraform.io/)

## Credenciais com a aws

[AWS-CLI-INSTALL](https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html)

Para usar as credenciais de forma segura é interessante usar a cli da aws, podendo configurar uma chave de acesso com este comando:

```bash
   aws configure --profile "tf01"
```

# Terraform

<div align="center">
  <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/0/04/Terraform_Logo.svg/1280px-Terraform_Logo.svg.png" width="70%">
</div>

<hr/>

<details><summary> <h2>Ler em Português - BR</h2></summary>
<hr/>
Terraform é uma ferramenta de infraestrutura como código (IaC) desenvolvida pela HashiCorp. Ela permite que você defina sua infraestrutura de maneira declarativa, ou seja, você descreve o que quer que sua infraestrutura seja e o Terraform se encarrega de criar e gerenciar os recursos necessários para atender às suas especificações.

Com o Terraform, você pode gerenciar recursos em uma variedade de provedores de nuvem, incluindo Amazon Web Services (AWS), Microsoft Azure, Google Cloud Platform (GCP), dentre outros. Além disso, você também pode gerenciar recursos on-premises, como servidores físicos e virtuais.

O Terraform usa uma linguagem simples para definir a infraestrutura, chamada HashiCorp Configuration Language (HCL), que é fácil de entender e escrever. Ele permite que você crie, atualize e exclua recursos com segurança e facilidade, enquanto mantém um histórico completo de todas as mudanças feitas em sua infraestrutura.

O Terraform também oferece suporte a módulos, que são blocos reutilizáveis de configuração que podem ser compartilhados entre projetos e equipes. Isso ajuda a promover a reutilização de código e a padronização das configurações de infraestrutura.

Em resumo, o Terraform é uma ferramenta poderosa e flexível para gerenciar infraestrutura como código, permitindo que você crie, atualize e exclua recursos em diferentes provedores de nuvem e on-premises de maneira segura e fácil.

<hr/>



<details><summary><h3>Configurações iniciais</h3></summary>

<details><summary><h4>AWS CLI</h4></summary>

Para realizar a comunicação da sua aplicação do Terraform com os serviços da AWS é necessário fazer um vinculo

Uma forma de fazer essa comunicação é através da AWS CLI. As configurações que serão feitas, ficará salva em <b>~/aws/credentials</b>:

<ul>
<li><b>Configurar profile (usuário) em sua máquina</b>: se você possui apenas um único usuário na sua conta da aws, basta:

```
aws configure
```
mas, se você possui mais de um usuário em sua conta aws, é necessário especificar o usuário:

```
aws configure --profile "nome_do_usuario"
```

</li>
<li>
<b>Configurar Access Key e Secret Key</b>: após informar o usuário, a AWS CLI vai pedir o Access Key e Secret Key. Caso não tenha, acesse a AWS na parte de usuário (IAM), e habilite essa forma de credencial. Tendo a Access Key e Secret Key, apenas cole.
</li>
<li>
<b>Configurar a região</b>: será pedido a região da sua aplicação, vai descobrir acesse a sua conta na AWS e clique na Guia global, a primeira opção que aparecer é a sua região ou olhe no link da aws, vai ter escrito region=nome_da_sua_regiao. Digite/cole a sua região no AWS CLI.
</li>
<li>
<b>Configurar o output format</b>: para confirgurar a saída dos dados, pode ser escolhido o formato json. Então basta digitar json.
</li>
</ul>
</details>
</details>

<details><summary><h3>Provedores</h3></summary>

No contexto do Terraform e da infraestrutura como código (IaC), um "provider" refere-se ao plugin responsável por gerenciar e interagir com um provedor de nuvem ou serviço específico. Cada provedor de nuvem (por exemplo, AWS, Azure, Google Cloud) ou provedor de serviço (por exemplo, GitHub, Docker) possui seu próprio provedor no Terraform.
  
Para encontrar os scripts de exemplos, considere usar a página oficial do <a href="https://registry.terraform.io/providers/hashicorp/aws/latest">Terraform Registry</a>

Clique em 'documentação' e pesquise pelo nome do recurso da AWS que você deseja construir usando o Terraform: EC2, ECS, S3, SNS, SQS, DynamoDB, Lambda, etc.

</details>

<details><summary><h3>Comandos</h3></summary>

<details><summary><h4>Comuns</h4></summary>
 <table>
 <tr align="center">
     <td>Comando</td>
     <td>Ação</td>
 </tr>
  <tr align="center">
     <td>terraform init</td>
     <td>inicializa o gerenciamento</td>
 </tr>
 <tr align="center">
     <td>terraform plan</td>
     <td>Organiza o projeto e se necessário faz validações</td>
 </tr>
 <tr align="center">
     <td>terraform validate</td>
     <td>Faz validações no projeto e indica melhorias</td>
 </tr>
  <tr align="center">
     <td>terraform apply</td>
     <td>Se tudo estiver bem, esse comando vai enviar o que foi feito para a AWS</td>
 </tr>
<tr align="center">
     <td>terraform fmt</td>
     <td>Formata a identação do código</td>
 </tr>
</table>
</details>

<details><summary><h4>Variáveis de Ambiente</h4></summary>

<p>Essa é a forma de configurar as variáveis de ambiente via terminal/cli. Existem outras formas como: credential (um arquivo de autenticação da AWS) ou criando um arquivo para guardar as variáveis de ambiente</p>

<table>
 <tr align="center">
     <td>Amostra</td>
     <td>Comando</td>
     <td>Ação</td>
 </tr>
  <tr align="center">
     <td rowspan=2 >VAR_NAME = VALUE</td>
     <td>AWS_ACCESS_KEY_ID=[VALUE AWS_ACCESS_KEY_ID]</td>
     <td>Configura o valor da variável de ambiente do Access key ID</td>
 </tr>
 <tr align="center">
     <td>AWS_SECRET_KEY=[VALUE AWS_SECRET_KEY]</td>
     <td>Configura o valor da variável de ambiente do Secret access key</td>
 </tr>
 <tr align="center">
     <td rowspan=1 >TF_VAR_ + name_var = [value terraform plan]</td>
     <td>TF_VAR_aws_profile=value terraform plan</td>
     <td>Configura o valor da variável de ambiente do usuário</td>
 </tr>
  <tr align="center">
     <td rowspan=2 >terraform plan + -var="aws_ + var=[value]"</td>
     <td>terraform plan -var="aws_profile=[profile_value]"</td>
     <td>Configura o valor da variável de ambiente do usuário</td>
 </tr>
 <tr>
    <td>terraform plan -var="instance_type=[instance_value]"</td>
    <td>Configura o valor da variável de ambiente da instância</td>
 </tr>
</table>
</details>

<details><summary><h4>Extras</h4></summary>
 <table>
 <tr align="center">
     <td>Comando</td>
     <td>Ação</td>
 </tr>
 <tr align="center">
     <td>terraform -h</td>
     <td>permite visualizar todos os comandos</td>
 </tr>
<tr align="center">
     <td>terraform plan -out="tfplan.out"</td>
     <td>Prepara para criar um arquivo chamado "tfplan.out" que conterá as informações de saída</td>
 </tr>
  <tr align="center">
     <td>terraform apply "tfplan.out"</td>
     <td>Cria um arquivo chamado "tfplan.out" que vai conter as informações de saída</td>
 </tr>
 <tr align="center">
     <td>terraform console</td>
     <td>Após esse comando basta digitar o nome de um recurso mais '.this' para ver todos os atributos (recurso.this) ou se quiser ver um atributo em específico adiciona '.nome_do_atributo' (recurso.this.nome_do_atributo)</td>
 </tr>
</table>
</details>
</details>



<details><summary><h3>Arquivos</h3></summary>

<details><summary><h4>Variáveis de ambiente</h4></summary>

<p>Uma forma de criar variáveis de ambiente além de comandos (seção comandos), é por meio de arquivos:

<table>
<tr align="center">
     <td>Arquivos</td>
     <td>Estrutura do código</td>
     <td>Utilização da variável no main.tf</td>
</tr>
<tr align="center">
<td>
<a href="https://github.com/gil-son/terraform-with-aws/blob/main/terraform-basic/03-variables-with-ec2/variables.tf">.tf</a>
</td>
<td>
     
```
variable "aws_region" {
type = string
description = ""
default = "us-east-1"
}
```
     
</td>
<td>
     
```
provider "aws" {
region  = var.aws_region
}
```
</td>
     
</tr>
<tr align="center">
<td><a href="https://github.com/gil-son/terraform-with-aws/blob/main/terraform-basic/04-variables-and-precedence-with-ec2/terraform.tfvars">.tfvars</a></td>
<td>


```
aws_region  = "us-east-1"
aws_profile = "default"
```


</td>
<td>


```
provider "aws" {
region  = var.aws_region
profile = var.aws_profile
}
```


</td>
</tr>
</table>


</details>
  

<details><summary><h4>terraform.tfstate</h4></summary>  
  
  
 O arquivo "terraform.tfstate" é um arquivo JSON gerado pelo Terraform que contém o estado atual dos recursos de infraestrutura gerenciados por ele. O arquivo é geralmente criado quando se executa o comando "terraform apply" pela primeira vez, e é atualizado a cada alteração subsequente feita pela execução do Terraform, possui a versão do projeto, outputs, resources (ID e tipo), variáveis de ambiente, 
  configurações de atributos específicos, histórico de mundanças que foram feitas.

Este arquivo é extremamente importante para o Terraform, pois ele usa essas informações para determinar qual é o estado atual da infraestrutura gerenciada, e então decide qual mudança precisa ser feita para trazer a infraestrutura para o estado desejado. Além disso, ele permite que o Terraform possa facilmente comparar o estado atual da infraestrutura com o estado desejado definido no código, e gerenciar as diferenças de forma automática.
  
```
 {
  "version": 4,
  "terraform_version": "1.0.3",
  "serial": 1,
  "lineage": "e90d4231-8bb2-4e63-93c3-3edc53f165b9",
  "outputs": {},
  "resources": [
    {
      "type": "aws_instance",
      "depends_on": [],
      "primary": {
        "id": "i-0a1b2c3d4e5f67890",
        "attributes": {
          "ami": "ami-0c55b159cbfafe1f0",
          "instance_type": "t2.micro",
          "subnet_id": "subnet-0123456789abcdef0",
          "vpc_security_group_ids": [
            "sg-0123456789abcdef0"
          ]
        },
        "meta": {},
        "tainted": false
      }
    },
    {
      "type": "aws_security_group",
      "depends_on": [],
      "primary": {
        "id": "sg-0123456789abcdef0",
        "attributes": {
          "description": "My security group",
          "name": "my-security-group",
          "tags.%": "1",
          "tags.Name": "my-security-group"
        },
        "meta": {},
        "tainted": false
      }
    }
  ]
}

  
  
 ```
 
</details> 
</details>
  
<details><summary><h3>Exemplos</h3></summary>

 <table>
 <tr align="center">
     <td><a href="">Projeto</a></td>
     <td>Propósitos</td>
     <td>Recursos</td>
 </tr>
  <tr align="center">
     <td><a href="">01-bucket-s3</a></td>
     <td>criação de um bucket no S3</td>
      <td rowspan="2"><a href="https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket">aws_s3_bucket</a></td>
 </tr>
 <tr align="center">
     <td><a href="">02-bucket-s3-update-delete</a></td>
     <td>Foi feito um reaproveitamento do projeto 01-bucket-s3, onde atualizei algumas propriedades para testar o comportamento do Terraform ao atualizar e deletar</td>
</tr> 
<tr align="center">
     <td><a href="">03-variables-with-ec2</a></td>
     <td>criação de um EC2 utilizando variaveis de ambiente</td>
     <td><a href="https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/instance">aws_instance</a></td>
 </tr> 
 <tr align="center">
     <td><a href="">04-variables-and-precedence-with-ec2</a></td>
     <td>criação de um EC2 utilizando diferentes formas de variáveis de ambiente e utilizando a precedência</td>
     <td><a href="https://developer.hashicorp.com/terraform/language/values/variables">Precedência de definição de variável</a></td>
 </tr> 

</table>
</details>
</details>

<details><summary><h2>Read in English - US</h2></summary>
<hr/>
Terraform is an Infrastructure as Code (IaC) tool developed by HashiCorp. It allows you to define your infrastructure declaratively, meaning you describe what you want your infrastructure to be and Terraform takes care of creating and managing the necessary resources to meet your specifications.

With Terraform, you can manage resources in a variety of cloud providers, including Amazon Web Services (AWS), Microsoft Azure, Google Cloud Platform (GCP), among others. Additionally, you can also manage on-premises resources such as physical and virtual servers.

Terraform uses a simple language to define infrastructure called HashiCorp Configuration Language (HCL), which is easy to understand and write. It enables you to create, update, and delete resources safely and easily, while maintaining a complete history of all changes made to your infrastructure.

Terraform also supports modules, which are reusable configuration blocks that can be shared across projects and teams. This helps promote code reuse and standardization of infrastructure configurations.

In summary, Terraform is a powerful and flexible tool for managing infrastructure as code, allowing you to create, update, and delete resources across different cloud providers and on-premises in a safe and easy way.
<hr/>

<details><summary><h3>Initial Settings</h3></summary>
<details><summary><h4>AWS CLI</h4></summary>

To establish communication between your Terraform application and AWS services, it's necessary to create a link.

One way to do this is through AWS CLI. The settings made will be saved in <b>~/aws/credentials</b>:
<ul>
<li><b>Set up a profile (user) on your machine</b>: if you have only one user in your AWS account, just type:

```
aws configure
```

but if you have more than one user in your AWS account, you need to specify the user:

```
aws configure --profile "user_name"
```

</li>
<li>
<b>Set up Access Key and Secret Key</b>: after informing the user, AWS CLI will ask for the Access Key and Secret Key. If you don't have them, access AWS under the user section (IAM), and enable this type of credential. With the Access Key and Secret Key, just copy and paste.
</li>
<li>
<b>Set up the region</b>: the region of your application will be requested. To find out, access your AWS account and click on the Global tab. The first option that appears is your region or check the aws link, it will have "region=your_region_name" written. Enter/paste your region in AWS CLI.
</li>
<li>
<b>Set up the output format</b>: to configure the output data, the json format can be chosen. So just type json.
</li>
</ul>
</details>
</details>

<details><summary><h3>Providers</h3></summary>

In the context of Terraform and infrastructure as code (IaC), a "provider" refers to the plugin responsible for managing and interacting with a specific cloud or service provider. Each cloud provider (e.g., AWS, Azure, Google Cloud) or service provider (e.g., GitHub, Docker) has its own Terraform provider.

To find the examples script, consider to use the oficial page <a href="https://registry.terraform.io/providers/hashicorp/aws/latest">Terraform Registry</a>

Click on 'documentation' and search by the name of AWS resource you wish to build using Terraform: EC2, ECS, S3, SNS, SQS, DynamoDB, Lambda, etc

</details>

<details><summary><h3>Commands</h3></summary>

<details><summary><h4>Commons</h4></summary>
 <table>
 <tr align="center">
     <td>Command</td>
     <td>Action</td>
 </tr>
  <tr align="center">
     <td>terraform init</td>
     <td>initializes the management</td>
 </tr>
 <tr align="center">
     <td>terraform plan</td>
     <td>Organizes the project and, if necessary, performs validations</td>
 </tr>
 <tr align="center">
     <td>terraform validate</td>
     <td>Validates the project and suggests improvements</td>
 </tr>
  <tr align="center">
     <td>terraform apply</td>
     <td>If everything is ok, this command will send what was done to AWS</td>
 </tr>
<tr align="center">
     <td>terraform fmt</td>
     <td>Formats code indentation</td>
 </tr>
</table>
</details>

<details><summary><h4>Environment Variables</h4></summary>
<p>This is the way to configure environment variables via terminal/cli. There are other ways, such as using a credential file (an AWS authentication file) or creating a file to store the environment variables.</p>
<table>
 <tr align="center">
     <td>Sample</td>
     <td>Command</td>
     <td>Action</td>
 </tr>
  <tr align="center">
     <td rowspan=2 >VAR_NAME = VALUE</td>
     <td>AWS_ACCESS_KEY_ID=[VALUE AWS_ACCESS_KEY_ID]</td>
     <td>Configures the value of the Access key ID environment variable</td>
 </tr>
 <tr align="center">
     <td>AWS_SECRET_KEY=[VALUE AWS_SECRET_KEY]</td>
     <td>Configures the value of the Secret access key environment variable</td>
 </tr>
 <tr align="center">
     <td rowspan=1 >TF_VAR_ + name_var = [value terraform plan]</td>
     <td>TF_VAR_aws_profile=value terraform plan</td>
     <td>Configures the value of the user environment variable</td>
 </tr>
  <tr align="center">
     <td rowspan=2 >terraform plan + -var="aws_ + var=[value]"</td>
     <td>terraform plan -var="aws_profile=[profile_value]"</td>
     <td>Configures the value of the user environment variable</td>
 </tr>
 <tr>
    <td>terraform plan -var="instance_type=[instance_value]"</td>
    <td>Configures the value of the instance environment variable</td>
 </tr>
</table>
</details>

<details><summary><h4>Extras</h4></summary>
 <table>
 <tr align="center">
     <td>Command</td>
     <td>Action</td>
 </tr>
 <tr align="center">
     <td>terraform -h</td>
     <td>to see all commands</td>
 </tr>
 <tr align="center">
     <td>terraform plan -out="tfplan.out"</td>
     <td>Prepare to create a file called "tfplan.out" which will contain the output information</td>
 </tr>
  <tr align="center">
     <td>terraform apply "tfplan.out"</td>
     <td>Creates a file named "tfplan.out" that will contain the output information</td>
 </tr>
 <tr align="center">
     <td>terraform console</td>
     <td>After running this command, just type the name of a resource followed by '.this' to see all of its attributes (resource.this), or if you want to see a specific attribute, add '.attribute_name' (resource.this.attribute_name)</td>
 </tr>  
</table>
</details>
</details>

<details><summary><h3>Files</h3></summary>
<details><summary><h4>Environment Variables</h4></summary>
<p>One way to create environment variables in addition to commands (commands section) is through files:
<table>
<tr align="center">
     <td>Files</td>
     <td>Code structure</td>
     <td>Usage of the variable in main.tf</td>
</tr>
<tr align="center">
<td>
<a href="https://github.com/gil-son/terraform-with-aws/blob/main/terraform-basic/03-variables-with-ec2/variables.tf">.tf</a>
</td>
<td>

```
variable "aws_region" {
type = string
description = ""
default = "us-east-1"
}
```

</td>
<td>

```
provider "aws" {
region  = var.aws_region
}
```

</td>
</tr>
<tr align="center">
<td><a href="https://github.com/gil-son/terraform-with-aws/blob/main/terraform-basic/04-variables-and-precedence-with-ec2/terraform.tfvars">.tfvars</a></td>
<td>

```
aws_region  = "us-east-1"
aws_profile = "default"
```

</td>
<td>

```
provider "aws" {
region  = var.aws_region
profile = var.aws_profile
}
```

</td>
</tr>
</table>
</details>
  
<details><summary><h4>terraform.tfstate</h4></summary>  

The "terraform.tfstate" file is a JSON file generated by Terraform that contains the current state of the infrastructure resources managed by it. The file is usually created when running the "terraform apply" command for the first time, and it's updated with every subsequent change made by Terraform. It includes the project version, outputs, resources (ID and type), environment variables, specific attribute configurations, and change history.

This file is extremely important for Terraform because it uses this information to determine what the current state of the managed infrastructure is, and then decides what changes need to be made to bring the infrastructure to the desired state. Additionally, it allows Terraform to easily compare the current state of the infrastructure with the desired state defined in the code and manage the differences automatically.


```
  
 {
  "version": 4,
  "terraform_version": "1.0.3",
  "serial": 1,
  "lineage": "e90d4231-8bb2-4e63-93c3-3edc53f165b9",
  "outputs": {},
  "resources": [
    {
      "type": "aws_instance",
      "depends_on": [],
      "primary": {
        "id": "i-0a1b2c3d4e5f67890",
        "attributes": {
          "ami": "ami-0c55b159cbfafe1f0",
          "instance_type": "t2.micro",
          "subnet_id": "subnet-0123456789abcdef0",
          "vpc_security_group_ids": [
            "sg-0123456789abcdef0"
          ]
        },
        "meta": {},
        "tainted": false
      }
    },
    {
      "type": "aws_security_group",
      "depends_on": [],
      "primary": {
        "id": "sg-0123456789abcdef0",
        "attributes": {
          "description": "My security group",
          "name": "my-security-group",
          "tags.%": "1",
          "tags.Name": "my-security-group"
        },
        "meta": {},
        "tainted": false
      }
    }
  ]
}
  
 ```
 
</details>   
  
  
</details>
  
<details><summary><h3>Examples</h3></summary>
 <table>
 <tr align="center">
     <td><a href="">Project</a></td>
     <td>Purposes</td>
     <td>Resources</td>
 </tr>
  <tr align="center">
     <td><a href="">01-bucket-s3</a></td>
     <td>create an S3 bucket</td>
      <td rowspan="2"><a href="https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket">aws_s3_bucket</a></td>
 </tr>
 <tr align="center">
     <td><a href="">02-bucket-s3-update-delete</a></td>
     <td>Reuse of the 01-bucket-s3 project, where I updated some properties to test Terraform's behavior when updating and deleting</td>
 </tr>
 <tr align="center">
     <td><a href="">03-variables-with-ec2</a></td>
     <td>Creation of an EC2 using environment variables</td>
     <td><a href="https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/instance">aws_instance</a></td>
 </tr> 
 <tr align="center">
     <td><a href="">04-variables-and-precedence-with-ec2</a></td>
     <td>Creation of an EC2 using different types of environment variables and utilizing precedence</td>
     <td><a href="https://developer.hashicorp.com/terraform/language/values/variables">Variable definition precedence</a></td>
 </tr>
</table>
</details>  
</details>

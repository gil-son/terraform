# Terraform

<div align="center">
  <img src="https://blog.o2b.com.br/content/images/2022/09/terraform-logo-1.png" width="50%">
</div>



<details><summary> <h3>Ler em Português - BR</h3></summary>
<hr/>
Terraform é uma ferramenta de infraestrutura como código (IaC) desenvolvida pela HashiCorp. Ela permite que você defina sua infraestrutura de maneira declarativa, ou seja, você descreve o que quer que sua infraestrutura seja e o Terraform se encarrega de criar e gerenciar os recursos necessários para atender às suas especificações.

Com o Terraform, você pode gerenciar recursos em uma variedade de provedores de nuvem, incluindo Amazon Web Services (AWS), Microsoft Azure, Google Cloud Platform (GCP), dentre outros. Além disso, você também pode gerenciar recursos on-premises, como servidores físicos e virtuais.

O Terraform usa uma linguagem simples para definir a infraestrutura, chamada HashiCorp Configuration Language (HCL), que é fácil de entender e escrever. Ele permite que você crie, atualize e exclua recursos com segurança e facilidade, enquanto mantém um histórico completo de todas as mudanças feitas em sua infraestrutura.

O Terraform também oferece suporte a módulos, que são blocos reutilizáveis de configuração que podem ser compartilhados entre projetos e equipes. Isso ajuda a promover a reutilização de código e a padronização das configurações de infraestrutura.

Em resumo, o Terraform é uma ferramenta poderosa e flexível para gerenciar infraestrutura como código, permitindo que você crie, atualize e exclua recursos em diferentes provedores de nuvem e on-premises de maneira segura e fácil.

<hr/>
<details><summary>Exemplos</summary>

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
     <td><a href="">04-variables-with-ec2</a></td>
     <td>criação de um EC2 utilizando diferentes formas de variáveis de ambiente e utilizando a precedência</td>
     <td><a href="https://developer.hashicorp.com/terraform/language/values/variables">Precedência de definição de variável</a></td>
 </tr> 

</table>
</details>

<details><summary>Comandos</summary>
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
</table>
</details>
</details>

<details><summary><h3>Read in English - US</h3></summary>
<hr/>
Terraform is an Infrastructure as Code (IaC) tool developed by HashiCorp. It allows you to define your infrastructure declaratively, meaning you describe what you want your infrastructure to be and Terraform takes care of creating and managing the necessary resources to meet your specifications.

With Terraform, you can manage resources in a variety of cloud providers, including Amazon Web Services (AWS), Microsoft Azure, Google Cloud Platform (GCP), among others. Additionally, you can also manage on-premises resources such as physical and virtual servers.

Terraform uses a simple language to define infrastructure called HashiCorp Configuration Language (HCL), which is easy to understand and write. It enables you to create, update, and delete resources safely and easily, while maintaining a complete history of all changes made to your infrastructure.

Terraform also supports modules, which are reusable configuration blocks that can be shared across projects and teams. This helps promote code reuse and standardization of infrastructure configurations.

In summary, Terraform is a powerful and flexible tool for managing infrastructure as code, allowing you to create, update, and delete resources across different cloud providers and on-premises in a safe and easy way.
<hr/>
<details><summary>Examples</summary>
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
     <td><a href="">04-variables-with-ec2</a></td>
     <td>Creation of an EC2 using different types of environment variables and utilizing precedence</td>
     <td><a href="https://developer.hashicorp.com/terraform/language/values/variables">Variable definition precedence</a></td>
 </tr>
</table>
</details>
<details><summary>Commands</summary>
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
</table>
</details>
</details>

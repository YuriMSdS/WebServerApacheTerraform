# Infraestrutura como Código: Script de provisionamento de um servidor web (apache)

Mais um desafio de projeto do bootcamp DevOps Experience da DIO, neste repositório estarei ensinando passo a passo de como criar um script para provisionar um servidor web.

Para criar o script e poder executá-lo, será necessário duas tecnologias:

>Uma conta AWS:

    Será necessário ter uma conta AWS devidamente configurada e suas credenciais de acesso.

>Terraform:

    O terraform é uma ferramente de Infraestrutura como código, e estarei utilizando para este projeto.


Tendo os dois requisitos citados anteriormente, podemos dar início ao script. Neste caso estaremos criando uma instância na AWS para hospedar o servidor WEB. Para isto, crie um arquivo com a extenção .tf (arquivo terraform) com o conteúdo do arquivo 'main.tf' presente no projeto (consultar código)

Após a criação do script basta executá-lo da seguinte forma:

>1º Abrir um terminal na pasta onde está salvo o 'main.tf';

>2º Execute os seguintes comandos:

    terraform init

    terraform apply

>3º Após o término do processo, o script irá exibir o IP público da instância

Por fim basta acessar o servidor WEB!
Para acessar o servidor web, abra o navegador e insira o IP público da instância.

Este foi um projeto bem simples, no qual não foi configurado a parte de segurança, loadbalance, DNS e etc.

    TECNOLOGIAS UTILIZADAS:

    •AWS (Serviço em nuvem utilizado)

    •TERRAFORM (Manipulador de infraestrutura em código)

    •VSCODE (como IDE)
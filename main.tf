provider "aws" {
    region = "us-east-1"                        # Região desejada
}

resource "aws_instance" "web_server" {
    ami           = "ami-0c55b159cbfafe1f0"     # AMI do Amazon Linux 2 (pode substituir de acordo com a necessidade)
    instance_type = "t2.micro"                  # Tipo da máquina, neste caso uma de baixo custo/performance (também pode ser modificada de acordo com a necessidade)

    tags = {
        Name = "web-server-instance"
    }

# Os campos abaixo são de uso pessoal, portanto, devem ser colocadas as credenciais pessoais do usuário
    key_name       = "sua_chave_ssh"            # Substituir pelo nome da chave SSH
    security_group = ["Default"]                # Substituir pelo ID do grupo de segurança desejado


#Nesta etapa, é onde será atualizado os pacotes, o servidor web será instalado, o apache será configurado e iniciado, e a página HTML criada!    
    user_data = <<-EOF                  
        #!/bin/bash
        sudo yum update -y
        sudo yum install -y httpd
        sudo systemctl start httpd
        sudo systemctl enable httpd
        echo "<html><body><h1> DevOps DIO! </h1></body></html>" > /var/www/html/index.html
    EOF
}

#Etapa na qual será exibido os IPs públicos da instância criada e da instância EC2
output "public_ip" {
    value = aws_instance.web_server.public_ip
}

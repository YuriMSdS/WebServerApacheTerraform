provider "aws" {
    region = "us-east-1" #Região desejada
}

resource "aws_instance" "web_server" {
    ami           = "ami-0c55b159cbfafe1f0" #AMI do Amazon Linux 2 (pode substituir de acordo com a necessidade)
    instance_type = "t2.micro" #Tipo da máquina, neste caso uma de baixo custo/performance (também pode ser modificada de acordo com a necessidade)
}


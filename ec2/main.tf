resource "aws_instance" "prisma_ec2" {
  ami           = var.ami_id
  instance_type = var.instance_type
  subnet_id     = var.subnet_id
  key_name      = "your-key-name"

  tags = {
    Name = "prisma-ec2-instance"
  }

  user_data = <<-EOF
              #!/bin/bash
              mkdir -p /home/ec2-user/Dicio/certs_consorcio/
              echo "Certificate contents" > /home/ec2-user/Dicio/certs_consorcio/fullchain.pem
              echo "Private key contents" > /home/ec2-user/Dicio/certs_consorcio/privkey.pem
              echo "User PFX contents" > /home/ec2-user/Dicio/certs_consorcio/usuario.pfx
              EOF
}

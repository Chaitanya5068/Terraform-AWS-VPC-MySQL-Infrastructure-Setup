# PUBLIC EC2 (BASTION)
resource "aws_instance" "public_ec2" {
  ami           = "ami-0ec10929233384c7f"
  instance_type = "t3.micro"

  subnet_id = aws_subnet.Public_sub.id

  vpc_security_group_ids = [
    aws_security_group.public_sg.id
  ]

  associate_public_ip_address = true
  key_name = "mykey"

  user_data = <<-EOF
              #!/bin/bash
              apt-get update -y
              apt-get install -y mysql-client
              EOF

  tags = {
    Name = "Public-EC2"
  }
}

# PRIVATE EC2 (MYSQL)
resource "aws_instance" "private_ec2" {
  ami           = "ami-0ec10929233384c7f"
  instance_type = "t3.micro"

  subnet_id = aws_subnet.Private_sub.id

  vpc_security_group_ids = [
    aws_security_group.private_sg.id
  ]

  key_name = "mykey"

  user_data = <<-EOF
              #!/bin/bash

              apt-get update -y
              DEBIAN_FRONTEND=noninteractive apt-get install -y mysql-server

              systemctl start mysql
              systemctl enable mysql

              sed -i 's/bind-address.*/bind-address = 0.0.0.0/' /etc/mysql/mysql.conf.d/mysqld.cnf

              systemctl restart mysql


              mysql -u root <<MYSQL_SCRIPT
              CREATE DATABASE lab_db;
              CREATE USER 'lab_user'@'%' IDENTIFIED BY 'chaitu123';
              GRANT ALL PRIVILEGES ON lab_db.* TO 'lab_user'@'%';
              FLUSH PRIVILEGES;
MYSQL_SCRIPT

              EOF

  tags = {
    Name = "Private-EC2-MySQL"
  }
}
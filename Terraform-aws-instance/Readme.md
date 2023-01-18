# Creating an Ec2 instance with aws 

## Perequisite

- install aws cli  on your terminal  using the command below
`curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install`

- To use your IAM credentials to authenticate the Terraform AWS provider, set the AWS_ACCESS_KEY_ID environment variable.
  `export AWS_ACCESS_KEY_ID=` enter your access key id
  `export AWS_SECRET_ACCESS_KEY=` Set secret key
  
## Next steps
`terraform init`

Configure you main.tf file

Use `terraform fmt` to format your terraform file

Use `terraform validate ` to ensure your configurations are syntatically valid and internnally consistent.

`terraform apply`

and lastly do not forget `Terraform Destroy`
  

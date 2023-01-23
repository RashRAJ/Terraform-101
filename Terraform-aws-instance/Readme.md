# Creating an AWS Ec2 instance with Terraform

Basic configuration for creating aws instance, and playing around with terraform command


## Perequisite

- install aws cli  on your terminal  using the command below
`curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install`

- To use your IAM credentials to authenticate the Terraform AWS provider, set the AWS_ACCESS_KEY_ID environment variable.
   
   run `aws configure` and set the following

  `export AWS_ACCESS_KEY_ID=` enter your access key id
  
  `export AWS_SECRET_ACCESS_KEY=` Set secret key
  
  
## Next steps
`terraform init`

Configure you main.tf file

Use `terraform fmt` to format your terraform file

Use `terraform validate ` to ensure your configurations are syntatically valid and internnally consistent.

`terraform apply`


# Adding a `variable.tf` file
we created a variable file that defines the name of the instance and affected the change on the `main.tf` file (note the tags section), you can also make ths changes  directly from the command line using `terraform apply -var "instance_name=YetAnotherName"`




# Adding an output.tf file and how it works

We added some configurations to return some output from our instance in our `outputs.tf` file

run `terraform apply` agian after creating the `outputs.tf` file Respond to the confirmation prompt with yes. and in this case you will be given the `ip adress` and the `instance id`

You can also use `terraform output` to get the output at any given time


And lastly do not forget `Terraform Destroy` when you are all done!
  

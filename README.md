This could be a container and run on ECS, or it could just run on an EC2 instance and installed via user data.
Use Terraform https://www.terraform.io/ to deploy the infrastructure for which this application relies on, also bootstrap the application onto the resource. Doesn’t matter if it’s ECS or EC2 or even Lambda. What I’m looking for is a way to check out your code and run terraform plan/terraform apply.


The infrastructure is built using terraform as requested and it should be very easy to follow.


**AWS services used**

* 2 EC2 instances - One for the Java API and the other for the PostgreSQL
* 2 Elastic IP attached to the public subnet (both instances are in public subnets but for live production deployment in real project
I would put database in a private subnet)
* All security groups configured

**To run the project**
* Check out this git project and insert your secret and access keys and run the following commands.
* Terrform plan
* Terraform apply 

**Note**: You will need to insert your AWS Secret and AWS access keys into the empty quotations in the variables.tf file.

**To deploy the jar file**
* Copy the jar file form local with scp command to the AWS java ec2 instance in AWS
* SSH into the java ec2 instance and run java -jar "name of the java file" 

**Discalimer - maybe not elegant but just keeping it simple**

**Note -- I paid for aws services i'm using that's why i'm keeping it as simple as possible so as not to incure extra cost:)**


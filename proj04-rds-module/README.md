[x] 1. Understand the RDS resource and which necessary resources we need
[x] 2. Create a module with the standard structure
[x] 3. Implement variable validation
[x] 4. Implement networking validation
[x]    4.1 Receive subnet ids and security group ids via variables
[x]    4.2 For subnets:
[x]      4.2.1 Make sure that they are not in the default VPC
[x]      4.2.2 Make sure that they are private:
[x]        4.2.2.1 Check whether they are tagged with Access=Private
[x]      4.3 For security groups:
[x]        4.3.1 Make sure that there are no inbound rules for IP addresses
[x] 5. Create the necessary resources and make sure the validation is working
[x] 6. Create the RDS instance inside of the module
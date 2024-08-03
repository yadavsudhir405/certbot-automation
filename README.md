**Steps to setup the certificates:**

1) Login to Aws account and create hosted zone with domain yadavsudhir.com
2) Copy the nameservers from there and add to google domain in custom namespace
3) Run `make install.full` 
    It does the following things:
     i) Spin-up aws instance
     ii) Add domain entry to Route53
     iii) Get the certificate from let's encrypt
     iV) copy those certificated to local machine from where ansible is being run
     V) Move these certificates to my server(sudhir_desktop)
     Vi) It cleanup the runing ec2 instances
     
4) Run `make install.certs`
    This command just try to copies the certificated files from local machine to server
    
    
    
**Notes**

1)Make sure ansible inventory is point to the hosts.yaml file of this directory.
2)Make sure the domains name have been duplicated to differennt tasks in playbook.yml.
This duplicatin needs to be removed in future.


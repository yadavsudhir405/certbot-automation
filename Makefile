.PHONY: all

install.full: ## spin-up ec2 instance, add dns entries, get certificates and install to nginx
	ansible-playbook playbook.yml --ask-vault-pass

destroy.vm: ## destroy running ec2 instances
	ansible-playbook destroy-ec2.yml --ask-vault-pass


install.certs: ## copy certificates from local machine to remote machine
	ansible-playbook install-certs-nginx.yml --ask-vault-pass
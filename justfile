deploy:
	ansible-playbook --vault-password-file pass -e @secrets.yaml site.yaml -i hosts -l webservers -t letsencrypt
	ansible-playbook --vault-password-file pass -e @secrets.yaml site.yaml -i hosts -l webservers -t letsencrypt -e '{"letsencrypt_cert":{"name":"brocko","domains":["brockonet.bugabinga.net"],"challenge":"http","http_auth":"standalone"}}'
	ansible-playbook --vault-password-file pass -e @secrets.yaml site.yaml -i hosts
	
retry:
	ansible-playbook --vault-password-file pass -e @secrets.yaml site.yaml -i hosts --limit @/$HOME/Workspace/brockonet.bugabinga.net/site.retry


# Directory Summary

**Author:** Jose Paulo Cabral

## Prequisites

* Ansible (installed on local machine)
* SSH (installed on both local and remote machine/s)
* Target Machine: Ubuntu 20.04 Server Edition LTS and/or Centos 8

## Requirements

* configured SSH key-based authentication
* passwordless sudo on remote machines
	Note: On remote machines execute ``sudo visudo`` and append the following line to enable passwordless sudo on account.
	```
	<user> ALL=(ALL) NOPASSWD:ALL
	```

## Directory Structure

```
quiz31
	files/
		c-vsftpd.conf
		u-vsftpd.conf
	roles/
		configurevsftpcentos/
			defaults/
				main.yml
			files/
			handlers/
				main.yml
			meta/
				main.yml
			tasks/
				main.yml
			templates/
			tests/
				inventory
				test.yml
			vars/
				main.yml
			README.md
		configurevsftpdubuntu/
			defaults/
				main.yml
			files/
			handlers/
				main.yml
			meta/
				main.yml
			tasks/
				main.yml
			templates/
			tests/
				inventory
				test.yml
			vars/
				main.yml
			README.md
		installpackagecentos/
			defaults/
				main.yml
			files/
			handlers/
				main.yml
			meta/
				main.yml
			tasks/
				main.yml
			templates/
			tests/
				inventory
				test.yml
			vars/
				main.yml
			README.md
		installpackageubuntu/
			defaults/
				main.yml
			files/
			handlers/
				main.yml
			meta/
				main.yml
			tasks/
				main.yml
			templates/
			tests/
				inventory
				test.yml
			vars/
				main.yml
			README.md
		stopfirewallcentos/
			defaults/
				main.yml
			files/
			handlers/
				main.yml
			meta/
				main.yml
			tasks/
				main.yml
			templates/
			tests/
				inventory
				test.yml
			vars/
				main.yml
			README.md
		stopfirewallubuntu/
			defaults/
				main.yml
			files/
			handlers/
				main.yml
			meta/
				main.yml
			tasks/
				main.yml
			templates/
			tests/
				inventory
				test.yml
			vars/
				main.yml
			README.md
		
ansible.cfg
inventory
playbook.yaml
config.yaml
README.md
```

## Declaring Values for Variables
Inside the ``config.yaml`` file are the variables used in the playbook (imported for the roles). Redeclare the values for each variable in the following format.

```
name: <ftpuser>
password: <hashed_password_for_ftp_user_generated_using_mkpasswd>
user_comment: <comments_for_ftp_user>
ubuntu_vsftpd: <vsftpd.conf file dedicated for ubuntu machines (if at least one target is Ubuntu)>
centos_vsftpd: <vsftpd.conf file dedicated for centos machines (if at least one target is CentOS)>
```

## Executing the Playbook
Execute 	``playbook.yaml`` using the command:

```
$ ansible-playbook playbook.yaml
```

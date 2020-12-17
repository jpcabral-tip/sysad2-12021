
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
quiz32
	files/
		index.html
		jpcabral-tip-centos.conf
		jpcabral-tip.ubuntu.conf
	roles/
		configureapacheubuntu/
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
		configurehttpdcentos/
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
ansible.cfg
inventory
playbook.yaml
config.yaml
README.md
```

## Declaring Values for Variables
Inside the ``config.yaml`` file are the variables used in the playbook (imported for the roles). Redeclare the values for each variable in the following format.

```
domain: <custom_domain>
owner: <file_owner>
group: <group_owner_for_file>
ubuntu_src: <configuration file for apache2 in ubuntu>
centos_src: <configuration file for httpd in centos>
```

## Executing the Playbook
Execute 	``playbook.yaml`` using the command:

```
$ ansible-playbook playbook.yaml
```
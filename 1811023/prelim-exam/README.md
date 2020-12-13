
# Directory Summary

**Author:** Jose Paulo Cabral

## Prequisites

* Ansible (installed on local machine)
* SSH (installed on both local and remote machine/s)
* Target Machine: Ubuntu 20.04 Server Edition LTS

## Requirements

* SSH private key file for authentication placed on working directory.
* Ansible configuration file.
* Inventory file.

## Directory Structure

```
prelim-exam
	roles/
		changemotd/
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
		createduser/
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
		java/
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
		python/
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
ansible.cfg*
inventory*
playbook.yaml
private.key*
.gitignore
README.md
```

Note: Files marked with asterisk (*) at the end are declared inside ``.gitignore``.

## Content Structure for Files Declared in .gitgnore
* ``private.key``
	The localmachine generated SSH private key (named ``id_rsa`` by default inside ``~/.ssh/``
* ``ansible.cfg``
	Format for the configuration file can be seen as follows:
	```
	[defaults]
	
	inventory = ./inventory
	remote_user = <REMOTE_USER>
	private_key_file = ./<PRIVATE_KEY_FILE_FOR_KEY_BASED_AUTHENTICATION>

	[privilege_escalation]
	become = True
	become_method = sudo
	become_user = root
	become_ask_pass = False
	```
* ``inventory``
	The file name itself is inventory. If changed, redeclare the file name or path as value on the ``ansible.cfg`` file inside the ``inventory`` variable. An example format is presented as follows:
	```
	[<GROUP_NAME (OPTIONAL)>]
	<REMOTE HOST/S IP>
	```
	Ex.
	```
	[ubuntu]
	192.168.254.69
	```


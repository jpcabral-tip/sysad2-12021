# Directory Summary

**Author:** Jose Paulo Cabral

## Prequisites

* Ansible (installed on local machine)
* SSH (installed on both local and remote machine/s)

## Requirements

* SSH private key file for authentication placed on working directory.
* Declare MySQL database user for local and remote hosts. (to be supplied in ``vars/db_config_vars.yaml``
Note: ``private.key`` and ``vars/db_config_vars.yaml`` are placed on ``.gitignore`` and must be supplied before executing the playbook.

## Directory Structure

```
quiz22
	files/
		db.sql
		index.html
		jpcabral-tip.conf
		todo_list.php	
	vars/
		db_config_vars.yaml*
ansible.cfg
inventory
playbook.yaml
private.key*
.gitignore
README.md
```

Note: Files marked with asterisk (*) at the end are declared inside ``.gitignore``.

## Content Structure for Files Declared in .gitgnore
* ``private.key``
	The localmachine generated SSH private key (named ``id_rsa`` by default inside ``~/.ssh/``
* ``vars/db_config_vars.yaml``
	```
	db_host: <database IP>
	db_user: <database user>
	db_pass: <database user password>
	```

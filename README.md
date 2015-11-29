# ansible-roles

This is my Ansible roles, compatible with Amazon Linux, CentOS 6 and CentOS 7.

### Including

- apache
- awscli
- docker
- dotfiles
- git
- go
- hostname
- jq
- localtime
- memcached
- munin
- mysql
- nagios
- nginx
- node
- php
- publicdns2cname
- pyenv
- rbenv
- selinux
- sshd_config
- supervisor
- user
- vim
- wordpress
- yum

### Inventory

`hosts.tmpl` file need to be updated.

```
[main]
example.com ansible_ssh_user=centos ansible_ssh_private_key_file=/path/to/private_key
```


### Variables

`group_vars/main.yml.tmpl` file need to be updated.

```
sshd:
  port: 22
user:
  name: username
  password: "hashed_password"
  public_key: {{ lookup ('file','id_rsa.pub') }}
awscli:
  output: json
  region: ap-northeast-1
  aws_access_key_id:
  aws_secret_access_key:
github:
  github_repo: "git@github.com:username/dotfiles.git"
  github_user: "User Name"
  github_email: "username@example.com"
```

### How to run

```
ansible-playbook main.yml
```

# ansible-roles

This is my Ansible roles, compatible with Amazon Linux, CentOS 6 and CentOS 7.

### Including

- apache
- awscli
- docker
- dotfiles
- git
- gitconfig
- go
- hostname
- jq
- localtime
- nginx
- pip
- publicdns2cname
- selinux
- sshd_config
- supervisor
- user
- vim
- yum

### Templates

Following files need to be updated and .tmpl extension removed.

```
hosts.tmpl
roles/awscli/vars/main.yml.tmpl
roles/dotfiles/vars/main.yml.tmpl
roles/gitconfig/vars/main.yml.tmpl
roles/sshd_config/vars/main.yml.tmpl
roles/user/vars/main.yml.tmpl
```

### Upcoming roles

- memcached
- munin
- mysql
- php
- php-fpm
- rbenv
- tmux

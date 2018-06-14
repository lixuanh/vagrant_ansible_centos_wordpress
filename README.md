# vagrant_ansible_centos_wordpress
|PHP Ver.|Engine|Database|Status|
|--|--|--|--|
|7.2|Nginx|MariaDB|Passed|
|5|Nginx|Mysql|Unknown|

## Init
```
vagrant up
```
First time need 'vagrant reload'. Then accese 127.0.0.1 to install WordPress.

### Default setting
All conf files in templates are set path for '/vagrant/wordpress' defaultly. 
If you want to use 'PHP5 Mysql' instead of 'PHP72 MariaDB', modify share>ansible>roles>wordpress>tasks>main.yml and conf files in share>ansible>roles>wordpress>templates.

### Warning: 'selinux' not supported in vagrant VM
\share\ansible\roles\wordpress\tasks\05_wordpress.yml
```
- name: Selinux permissive
  lineinfile:
    dest: /etc/sysconfig/selinux
    regexp: '^SELINUX=enforcing'
    line: 'SELINUX=permissive'
```

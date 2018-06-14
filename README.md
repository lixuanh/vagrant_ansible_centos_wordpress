# vagrant_ansible_centos_wordpress
|PHP Ver.|Engine|Database|Status|
|--|--|--|--|
|7.2|Nginx|MariaDB|Passed|
|5|Nginx|Mysql||

### Warning: 'selinux' not supported in vagrant VM
\share\ansible\roles\wordpress\tasks\05_wordpress.yml
```
- name: Selinux permissive
  lineinfile:
    dest: /etc/sysconfig/selinux
    regexp: '^SELINUX=enforcing'
    line: 'SELINUX=permissive'
```


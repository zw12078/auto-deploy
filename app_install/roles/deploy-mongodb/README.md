Role Name mongodb

172.18.113.74 ansible_user=root  ansible_password=123456
172.18.113.79 ansible_user=root  ansible_password=123456
172.18.113.81 ansible_user=root  ansible_password=123456

[nodes]
172.18.113.74
172.18.113.79
172.18.113.81


[node1]
172.18.113.74

[node2]
172.18.113.79

[node3]
172.18.113.81


------------------------------
---
- hosts: all
  remote_user: root
  roles:
    - deploy-mongodb

参考文章
http://www.ityouknow.com/mongodb/2017/08/05/mongodb-cluster-setup.html
启动关闭
mongodb的启动顺序是，先启动配置服务器，在启动分片，最后启动mongos.
mongod -f /usr/local/mongodb/conf/config.conf
mongod -f /usr/local/mongodb/conf/shard1.conf
mongod -f /usr/local/mongodb/conf/shard2.conf
mongod -f /usr/local/mongodb/conf/shard3.conf
mongod -f /usr/local/mongodb/conf/mongos.conf
# ansible-role-tomcat
Role Name
=========

A brief description of the role goes here.

Requirements
------------

Any pre-requisites that may not be covered by Ansible itself or the role should be mentioned here. For instance, if the role uses the EC2 module, it may be a good idea to mention in this section that the boto package is required.

Role Variables
--------------
json_var:
{
    "app_deploy_dir": "20180102-162606", 
    "app_logs_path": "/home/xxx/logs/", 
    "server_deploy_path": "/home/xxx/www/dev-backend-carfree-api", 
    "server_name": "dev-backend-xxx-api", 
    "server_port": "8070", 
    "server_type": "tomcat", 
    "server_war_name": "api.war", 
    "target": "x.x.x.x"
}

Dependencies
------------

A list of other roles hosted on Galaxy should go here, plus any details in regards to parameters that may need to be set for other roles, or variables that are used from other roles.

Example Playbook
----------------

Including an example of how to use your role (for instance, with variables passed in as parameters) is always nice for users too:

---
- hosts: '{{ target }}'
  roles:
    - { role: tomcat}

ansible-playbook playbooks/tomcat.yml -e json_var

License
-------

BSD

Author Information
------------------

Danny lifeblood@163.com

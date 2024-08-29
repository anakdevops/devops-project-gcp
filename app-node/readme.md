# Generate SSL Jenkins

```
sudo openssl genrsa -out jenkins.anakdevops.online.key 2048
sudo openssl req -new -key jenkins.anakdevops.online.key -out jenkins.anakdevops.online.csr
sudo openssl x509 -req -days 365 -in jenkins.anakdevops.online.csr -signkey jenkins.anakdevops.online.key -out jenkins.anakdevops.online.crt
sudo openssl x509 -in jenkins.anakdevops.online.crt -text -noout
```

# Show token login

```
jenkins
sudo docker exec -it jenkins cat /var/jenkins_home/secrets/initialAdminPassword

gitlab
sudo docker exec -it gitlab cat /etc/gitlab/initial_root_password
```



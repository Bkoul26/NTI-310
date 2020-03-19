#rsyslog
gcloud compute instances create rsyslog1 \
        --image-family centos-7 \
        --image-project centos-cloud \
        --zone us-central1-a \
        --tags "http-server","https-server" \
        --machine-type f1-micro \
        --scopes cloud-platform \
        --metadata-from-file startup-script=/home/bloshakoul/NTI-310/logserver/logsrv.sh \
        --private-network-ip=10.128.0.5
#ldap client
gcloud compute instances create ldap-client \
        --image-family centos-7 \
        --image-project centos-cloud \
        --zone us-central1-a \
        --tags "http-server","https-server" \
        --machine-type f1-micro \
        --scopes cloud-platform \
        --metadata-from-file startup-script=/home/bloshakoul/NTI-310/ldap_client.sh \
        --private-network-ip=10.128.0.8
#ldap serv
gcloud compute instances create ldap-server \
        --image-family centos-7 \
        --image-project centos-cloud \
        --zone us-central1-a \
        --tags "http-server","https-server" \
        --machine-type f1-micro \
        --scopes cloud-platform \
        --metadata-from-file startup-script=/home/bloshakoul/NTI-310/LDAPSERVER \
        --private-network-ip=10.128.0.9
#nfs client
gcloud compute instances create nfs-client \
        --image-family centos-7 \
        --image-project centos-cloud \
        --zone us-central1-a \
        --tags "http-server","https-server" \
        --machine-type f1-micro \
        --scopes cloud-platform \
        --metadata-from-file startup-script=/home/bloshakoul/NTI-310/nfs-client \
        --private-network-ip=10.128.0.6
        
#nfs server
gcloud compute instances create nfs-server \
        --image-family centos-7 \
        --image-project centos-cloud \
        --zone us-central1-a \
        --tags "http-server","https-server" \
        --machine-type f1-micro \
        --scopes cloud-platform \
        --metadata-from-file startup-script=/home/bloshakoul/NTI-310/nfs-server \
        --private-network-ip=10.128.0.7
      
#postgres

gcloud compute instances create postgres \
        --image-family centos-7 \
        --image-project centos-cloud \
        --zone us-central1-a \
        --tags "http-server","https-server" \
        --machine-type f1-micro \
        --scopes cloud-platform \
        --metadata-from-file startup-script=/home/bloshakoul/NTI-310/POSTGRESQL \
        --private-network-ip=10.128.0.10
    
#DJANGO
gcloud compute instances create django \
        --image-family centos-7 \
        --image-project centos-cloud \
        --zone us-central1-a \
        --tags "http-server","https-server" \
        --machine-type f1-micro \
        --scopes cloud-platform \
        --metadata-from-file startup-script=/home/bloshakoul/NTI-310/django \
        --private-network-ip=10.128.0.11
        
#ubuntu 
gcloud compute instances create client_ubuntu \
        --image-family ubuntu-18.04-lts \
        --image-project ubuntu-os-cloud \
        --zone us-central1-a \
        --tags "http-server","https-server" \
        --machine-type f1-micro \
        --scopes cloud-platform \
        --metadata-from-file startup-script=/home/bloshakoul/NTI-310/client ubuntu \
        --private-network-ip=10.128.0.12

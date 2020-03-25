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
#ldap srv

sleep 20s
gcloud compute instances create ldap-server \
        --image-family centos-7 \
        --image-project centos-cloud \
        --zone us-central1-a \
        --tags "http-server","https-server" \
        --machine-type f1-micro \
        --scopes cloud-platform \
        --metadata-from-file startup-script=/home/bloshakoul/NTI-310/LDAPSRV \
        --private-network-ip=10.128.0.9
sleep 20s
gcloud compute instances create ldap-client \
        --image-family centos-7 \
        --image-project centos-cloud \
        --zone us-central1-a \
        --tags "http-server","https-server" \
        --machine-type f1-micro \
        --scopes cloud-platform \
        --metadata-from-file startup-script=/home/bloshakoul/NTI-310/ldap_client.sh \
        --private-network-ip=10.128.0.8
                
#nfs server
sleep 20s
gcloud compute instances create nfs-server \
        --image-family centos-7 \
        --image-project centos-cloud \
        --zone us-central1-a \
        --tags "http-server","https-server" \
        --machine-type f1-micro \
        --scopes cloud-platform \
        --metadata-from-file startup-script=/home/bloshakoul/NTI-310/nfs-server \
        --private-network-ip=10.128.0.7
      
#nfs client
sleep 20s
gcloud compute instances create nfs-client \
        --image-family centos-7 \
        --image-project centos-cloud \
        --zone us-central1-a \
        --tags "http-server","https-server" \
        --machine-type f1-micro \
        --scopes cloud-platform \
        --metadata-from-file startup-script=/home/bloshakoul/NTI-310/nfs-client \
        --private-network-ip=10.128.0.6
        #postgres
sleep 20s
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
sleep 20s
gcloud compute instances create django \
        --image-family centos-7 \
        --image-project centos-cloud \
        --zone us-central1-a \
        --tags "http-server","https-server" \
        --machine-type f1-micro \
        --scopes cloud-platform \
        --metadata-from-file startup-script=/home/bloshakoul/NTI-310/django \
        --private-network-ip=10.128.0.11
        
#ubuntunfs
sleep 1m
gcloud compute instances create ubuntunfs \
        --image-family ubuntu-1804-lts \
        --image-project ubuntu-os-cloud \
        --zone us-central1-a \
        --tags "http-server","https-server" \
        --machine-type f1-micro \
        --scopes cloud-platform \
        --metadata-from-file startup-script=/home/bloshakoul/NTI-310/nfs-client \
        --private-network-ip=10.128.0.12
#ubuntuldap
sleep 1m
gcloud compute instances create ubuntuldap \
        --image-family ubuntu-1804-lts \
        --image-project ubuntu-os-cloud \
        --zone us-central1-a \
        --tags "http-server","https-server" \
        --machine-type f1-micro \
        --scopes cloud-platform \
        --metadata-from-file startup-script=/home/bloshakoul/NTI-310/ldap_client.sh \
        --private-network-ip=10.128.0.3
#gfgg

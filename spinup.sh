gcloud compute instances create rsyslog1 \
        --image-family centos-7 \
        --image-project centos-cloud \
        --zone us-central1-a \
        --tags "http-server","https-server" \
        --machine-type f1-micro \
        --scopes cloud-platform \
        --metadata-from-file startup-script=/home/bloshakoul/NTI-310/logserver/logsrv.sh \
        --private-network-ip=10.128.0.5


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

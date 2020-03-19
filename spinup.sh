gcloud compute instances create rsyslog1 \
        --image-family centos-7 \
        --image-project centos-cloud \
        --zone us-central1-a \
        --tags "http-server","https-server" \
        --machine-type f1-micro \
        --scopes cloud-platform \
        --metadata-from-file startup-script=/path/to/script.sh=/home/bloshakoul/NTI-310/logserver/logsrv.sh \
        --private-network-ip=10.128.0.5

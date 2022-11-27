#!/bin/bash

# Task 1. Create a utility virtual machine.#

gcloud compute instances create instance-2022 --project=qwiklabs-gcp-01-09dbc004a46e --zone=europe-west1-c --machine-type=n1-standard-2 --network-interface=network-tier=PREMIUM,subnet=default --metadata=enable-oslogin=true --maintenance-policy=MIGRATE --provisioning-model=STANDARD --service-account=485334932930-compute@developer.gserviceaccount.com --scopes=https://www.googleapis.com/auth/devstorage.read_only,https://www.googleapis.com/auth/logging.write,https://www.googleapis.com/auth/monitoring.write,https://www.googleapis.com/auth/servicecontrol,https://www.googleapis.com/auth/service.management.readonly,https://www.googleapis.com/auth/trace.append --tags=http-server,https-server --create-disk=auto-delete=yes,boot=yes,device-name=instance-2022,image=projects/windows-cloud/global/images/windows-server-2022-dc-v20221109,mode=rw,size=100,type=projects/qwiklabs-gcp-01-09dbc004a46e/zones/europe-west1-c/diskTypes/pd-ssd --no-shielded-secure-boot --shielded-vtpm --shielded-integrity-monitoring --reservation-affinity=any


# Task 2. Create a Windows virtual machine.#
gcloud compute instances create instance-2022 --project=qwiklabs-gcp-01-09dbc004a46e --zone=europe-west1-c --machine-type=n1-standard-2 --network-interface=network-tier=PREMIUM,subnet=default --metadata=enable-oslogin=true --maintenance-policy=MIGRATE --provisioning-model=STANDARD --service-account=485334932930-compute@developer.gserviceaccount.com --scopes=https://www.googleapis.com/auth/devstorage.read_only,https://www.googleapis.com/auth/logging.write,https://www.googleapis.com/auth/monitoring.write,https://www.googleapis.com/auth/servicecontrol,https://www.googleapis.com/auth/service.management.readonly,https://www.googleapis.com/auth/trace.append --tags=http-server,https-server --create-disk=auto-delete=yes,boot=yes,device-name=instance-2022,image=projects/windows-cloud/global/images/windows-server-2022-dc-v20221109,mode=rw,size=100,type=projects/qwiklabs-gcp-01-09dbc004a46e/zones/europe-west1-c/diskTypes/pd-ssd --no-shielded-secure-boot --shielded-vtpm --shielded-integrity-monitoring --reservation-affinity=any


# Task 3. Create a custom virtual machine. #
gcloud compute instances create instance-2024 --project=qwiklabs-gcp-01-09dbc004a46e --zone=us-central1-a --machine-type=e2-custom-2-4096 --network-interface=network-tier=PREMIUM,subnet=default --metadata=enable-oslogin=true --maintenance-policy=MIGRATE --provisioning-model=STANDARD --service-account=485334932930-compute@developer.gserviceaccount.com --scopes=https://www.googleapis.com/auth/devstorage.read_only,https://www.googleapis.com/auth/logging.write,https://www.googleapis.com/auth/monitoring.write,https://www.googleapis.com/auth/servicecontrol,https://www.googleapis.com/auth/service.management.readonly,https://www.googleapis.com/auth/trace.append --create-disk=auto-delete=yes,boot=yes,device-name=instance-2024,image=projects/debian-cloud/global/images/debian-10-buster-v20221102,mode=rw,size=10,type=projects/qwiklabs-gcp-01-09dbc004a46e/zones/us-central1-a/diskTypes/pd-balanced --no-shielded-secure-boot --shielded-vtpm --shielded-integrity-monitoring --reservation-affinity=any


# Connect via SSH to your custom VM #
#For the custom VM you just created, click SSH.

#To see information about unused and used memory and swap space on your custom VM, run the following command:#
free

# To see details about the RAM installed on your VM, run the following command:
sudo dmidecode -t 17

#To verify the number of processors, run the following command:
nproc

# see details about the CPUs installed on your VM, run the following command:
lscpu

#To exit the SSH terminal, run the following command:
exit 





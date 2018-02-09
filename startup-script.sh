#! /bin/bash
# gcloud compute instances create test-instance --custom-cpu=4 --custom-memory=4 --zone=us-east1-b --metadata-from-file startup-script=startup-script.sh
# gcloud compute ssh --ssh-flag="-L 8080:localhost:9999" skk2142@test-instance
# gcloud compute instances delete test-instance --zone=us-east1-b
apt-get update
wget https://bootstrap.pypa.io/get-pip.py
python3.5 get-pip.py
rm get-pip.py
sudo pip3 install jupyter numpy
apt-get install -y git
apt-get install -y default-jdk
apt-get install -y scala
git clone https://github.com/jupyter-scala/jupyter-scala.git && cd jupyter-scala/ && ./jupyter-scala && cd .. && rm -rf jupyter-scala
# jupyter notebook --no-browser --port 9999 &
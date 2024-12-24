#!/usr/bin/env bash

echo "$EC2_KEY" > key.pem
sudo chmod 600 key.pem

ssh -o StrictHostKeyChecking=no -i key.pem ubuntu@$EC2_IP "
  cd ~/flask_app
  git pull
  . venv/bin/activate
  pip install -r requirements.txt

  sudo systemctl daemon-reload
  sudo systemctl restart gunicorn
  sudo systemctl restart nginx
"
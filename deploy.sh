#!/usr/bin/env bash

ssh -i /home/ronny/Desktop/Deep-Devops/.keys/aws-login.pem ubuntu@98.80.74.89 "
  cd ~/flask_app
  git pull
  . venv/bin/activate
  pip install -r requirements.txt

  sudo systemctl daemon-reload
  sudo systemctl restart nginx
"
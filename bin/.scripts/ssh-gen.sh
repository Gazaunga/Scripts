#!/bin/bash
ssh-keygen -t rsa -C "jeremy.ottley@gmail.com"
xclip -sel clip < ~/.ssh/id_rsa.pub

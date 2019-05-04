#!/bin/bash
yum install -y open-vm-tools perl

systemctl start vmtoolsd
systemctl enable vmtoolsd
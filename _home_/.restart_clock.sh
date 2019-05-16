#!/bin/bash
sudo systemctl stop ntpd.service
sudo ntpd -qg

#!/bin/sh
#
cd /home/git/gitlab
sudo chown -R git.git /home/git/gitlab
sudo -u git -H mkdir tmp/pids/
sudo -u git -H mkdir tmp/sockets/
sudo chmod -R u+rwX  tmp/pids/
sudo chmod -R u+rwX  tmp/sockets/
sudo curl --output /etc/init.d/gitlab https://raw.github.com/gitlabhq/gitlab-recipes/5-1-stable/init.d/gitlab
sudo chmod +x /etc/init.d/gitlab
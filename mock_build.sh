#!/bin/bash
set -euxo pipefail

echo "fastestmirror=1" >> /etc/dnf/dnf.conf
dnf -y install mock
curl -O https://kojipkgs.fedoraproject.org//packages/bash/5.0.17/1.fc32/src/bash-5.0.17-1.fc32.src.rpm

mock -v --no-bootstrap-chroot bash-5.0.17-1.fc32.src.rpm
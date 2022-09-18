#!/usr/bin/env bash
exec {'echo "passwordAuthentication no\Identityfile ~/.ssh/school" >> /etc/ssh/ssh_config':path => '/bin/}

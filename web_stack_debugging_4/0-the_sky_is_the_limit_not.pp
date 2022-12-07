#!/usr/bin/env bash
# Rise the limit for the requests
exec { 'fixer':
  command =>  'sed -i "s/15/15000/g" /etc/default/nginx;service nginx restart',
  path    =>  '/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin',
  onlyif  =>  'test -e /etc/default/nginx',
}

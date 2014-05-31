default['389-ds']['setup']['general']['full_machine_name'] = node['fqdn']
default['389-ds']['setup']['general']['suite_spot_user_id'] = 'nobody'
default['389-ds']['setup']['general']['suite_spot_group'] = 'nobody'

default['389-ds']['setup']['slapd']['port'] = 389
default['389-ds']['setup']['slapd']['identifier'] = 'pki-tomcat'
default['389-ds']['setup']['slapd']['suffix'] = 'dc=example,dc=com'
default['389-ds']['setup']['slapd']['root_dn'] = 'cn=Directory Manager'
default['389-ds']['setup']['slapd']['root_dn_password'] = 'CHANGE_ME'

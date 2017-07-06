#
# Cookbook:: plexwatch
# Recipe:: packages
#
# Copyright:: 2017, The Authors, All Rights Reserved.

yum_repository 'EPEL' do
  description 'Extra Packages for Enterprise Linux'
  baseurl 'https://dl.fedoraproject.org/pub/epel/7/x86_64/'
  gpgkey 'https://dl.fedoraproject.org/pub/epel/RPM-GPG-KEY-EPEL-7'
  action :create
end

%w( perl-LWP-Protocol-https perl-XML-Simple perl-Pod-Usage perl-JSON perl-DBI perl-Time-Duration perl-Time-ParseDate perl-DBD-SQLite ).each do |p|
  package p
end

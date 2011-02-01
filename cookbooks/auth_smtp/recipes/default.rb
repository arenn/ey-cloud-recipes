#
# Cookbook Name:: auth_smtp
# Recipe:: default
#
remote_file "/etc/ssmtp/ssmtp.conf" do
  owner "root"
  group "root"
  mode 0644
  source "ssmtp.conf"
  backup false
  action :create
end

ey_cloud_report "auth_smtp" do
  message "custom ssmtp.conf for routing mail to AuthSMTP"
end



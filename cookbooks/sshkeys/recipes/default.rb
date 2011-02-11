#
# Cookbook Name:: sshkeys
# Recipe:: default
#


  ey_cloud_report "sshkeys" do
    message "processing sshkeys"
  end

  remote_file "/home/deploy/.ssh/id_rsa" do
    source "id_rsa"
    owner "deploy"
    group "deploy"
    mode 0600
  end

  remote_file "/home/deploy/.ssh/id_rsa.pub" do
    source "id_rsa.pub"
    owner "deploy"
    group "deploy"
    mode 0644
  end


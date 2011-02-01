#
# Cookbook Name:: ruby-gnome2
# Recipe:: default
#

  ey_cloud_report "ruby-gnome2" do
    message "processing ruby-gnome2"
  end

  remote_file "/home/deploy/ruby-gnome2-all-0.90.4.tar.gz" do
    source "ruby-gnome2-all-0.90.4.tar.gz"
    owner "deploy"
    group "deploy"
    mode 0644
  end

  remote_file "/home/deploy/install-rubygnome2" do
    source "install-rubygnome2"
    owner "deploy"
    group "deploy"
    mode 0755
  end

  execute "install_ruby-gnome2" do
    command "/home/deploy/install-rubygnome2"
    action :run
    user 'deploy'
  end


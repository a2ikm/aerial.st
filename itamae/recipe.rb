GROUP = "deploy"
USER  = "deploy"
HOME  = "/home/deploy"

ROOT_DIR  = File.expand_path("..", __FILE__)
FILES_DIR = "#{ROOT_DIR}/files"

%w(
  lsof
  gcc
  gcc-c++
  make
  patch
  openssl-devel
  readline-devel
  git
).each do |pkg|
  package pkg
end

group GROUP do
  gid 501
end

user USER do
  uid 501
  gid 501
  home HOME
end

directory "#{HOME}/.ssh" do
  user USER
  group GROUP
  mode "700"
end

file "#{HOME}/.ssh/authorized_keys" do
  content_file "#{FILES_DIR}/authorized_keys"
  owner USER
  group GROUP
  mode "600"
end

template "/etc/sudoers.d/#{USER}" do
  source "#{FILES_DIR}/sudoers.erb"
  variables user: USER
  owner "root"
  group "root"
  mode "600"
end

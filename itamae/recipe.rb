GROUP = "deploy"
USER  = "deploy"
HOME  = "/home/deploy"

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

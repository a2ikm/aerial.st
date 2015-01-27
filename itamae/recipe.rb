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

group "deploy" do
  gid 501
end

user "deploy" do
  uid 501
  gid 501
end

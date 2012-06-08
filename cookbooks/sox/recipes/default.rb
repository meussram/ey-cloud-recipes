#
# Cookbook Name:: sox
# Recipe:: default
#
script "install_sox" do
  interpreter "bash"
  user "root"
  cwd "/tmp"
  code <<-EOH
  sudo apt-get update
  sudo apt-get upgrade
  sudo apt-get install build-essential -y
  wget http://sourceforge.net/projects/sox/files/sox/14.4.0/sox-14.4.0.tar.gz
  tar -zxf sox-14.4.0.tar.gz
  cd sox-14.4.0
  ./configure
  make
  make install
  sudo ldconfig
  EOH
end

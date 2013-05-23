#
# Cookbook Name:: phpqatools
# Recipe:: default
#
# Copyright 2013, Streamline Social
#

include_recipe "composer"

# find composer (mimic logic in the composer cookbooks)
composer_bin = "#{node['composer']['prefix']}/bin/composer"
unless node['composer']['install_globally']
    unless node['composer']['install_dir'].nil? || node['composer']['install_dir'].empty?
        composer_bin "#{node['composer']['install_dir']}/composer.phar"
    end
end

# clone the phpqatools
git "#{node['phpqatools']['install_path']}" do
    action :sync
    repository node['phpqatools']['git']['repository']
    reference node['phpqatools']['git']['reference']
    notifies :run, "execute[phpqatools-composer-install]", :immediately
end

# install files
execute "phpqatools-composer-install" do
    action :nothing
    command "#{composer_bin} install"
    cwd node['phpqatools']['install_path']
end

# add the tools that are installed to the PATH
file "phpqatools-add-bin-to-path" do
    path "/etc/profile.d/phpqatools.sh"
    content "export PATH=$PATH:#{node['phpqatools']['install_path']}/bin"
    mode 0644
    notifies :run, "bash[phpqatools-source-bin-path]", :immediately
end

# source path for use immediately
bash "phpqatools-source-bin-path" do
    action :nothing
    command "source /etc/profile.d/phpqatools.sh"
end

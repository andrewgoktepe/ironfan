# aws included via metadata.rb


package "#{node[:hadoop][:hadoop_handle]}"
package "#{node[:hadoop][:hadoop_handle]}-native"

template "/tmp/ebs_settings.yaml" do
  owner "root"
  mode "0644"
  source "raw_settings.yaml.erb"
end

# if node[:ebs_volumes]
#   node[:ebs_volumes].each do |name, conf|
#     aws_ebs_volume "attach hdfs volume #{conf.inspect}" do
#       provider "aws_ebs_volume"
#       aws_access_key        node[:aws][:aws_access_key]
#       aws_secret_access_key node[:aws][:aws_secret_access_key]
#       aws_region            node[:aws][:aws_region]
#       availability_zone     node[:aws][:availability_zone]
#       volume_id             conf[:volume_id]
#       device                conf[:device]
#       action :attach
#     end
#   end
# end

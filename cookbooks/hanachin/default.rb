# rcm
execute "wget -qO /etc/yum.repos.d/utilities.repo https://download.opensuse.org/repositories/utilities/RHEL_7/utilities.repo" do
  not_if "[ -f /etc/yum.repos.d/utilities.repo ]"
end

package "rcm"

remote_directory "/home/ec2-user/.dotfiles" do
  owner "ec2-user"
  group "ec2-user"
  source "dotfiles"
end

execute "rcup -f" do
  user "ec2-user"
end

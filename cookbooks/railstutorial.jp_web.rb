execute "/usr/local/rvm/bin/rvm install 2.5.1" do
  not_if '[ -n "$(/usr/local/rvm/bin/rvm list | grep 2.5.1)" ]'
end

execute "git clone git@github.com:yasslab/railstutorial.jp_web.git" do
  user "ec2-user"
  cwd "/home/ec2-user/environment"
  not_if "[ -d /home/ec2-user/environment/railstutorial.jp_web ]"
end

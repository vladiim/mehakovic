namespace "rm" do
  task :marketing do
  	sh "s3cmd del --exclude logs/ --recursive s3://mehakovic --force"
  end
end

# task :name do
# 	puts "yo"
# end

# * Run `rake build:marketing`

namespace "deploy" do
  task :marketing do
  	sh "s3_website push"
  end
end
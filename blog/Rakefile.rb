namespace "compile" do
	task :marketing do
		sh "jekyll build"
	end
end

namespace "rm" do
  task :marketing do
  	sh "s3cmd --recursive ls s3://mehakovic | awk '{ print $4 }' | grep -v './logs/' | grep -v './AWSLogs' | grep -v './logs_cloud_front/' | xargs s3cmd del"
  end
end

namespace "push" do
  task :marketing do
  	sh "s3_website push"
  end
end

namespace "deploy" do
  task marketing: ["compile:marketing", "rm:marketing", "push:marketing"]
end
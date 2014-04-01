namespace "rm" do
  task :marketing do
  	sh "s3cmd --recursive ls s3://mehakovic | awk '{ print $4 }' | grep -v './logs/' | xargs s3cmd del"
  end
end

namespace "push" do
  task :marketing do
  	sh "s3_website push"
  end
end

namespace "deploy" do
  task marketing: ["rm:marketing", "push:marketing"] do
  end
end
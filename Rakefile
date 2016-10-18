require 'haml'
require 'dotenv/tasks'
require 'csv'
require "#{Dir.pwd}/build/build.rb"

task :build do
  Build.html
end

task :watch do
  sh 'sass --watch build/saas/global.scss:web/css/style.css --style compressed'
end

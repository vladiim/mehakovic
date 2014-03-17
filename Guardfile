# https://github.com/guard/guard#readme

# guard "coffeescript", :input => "app/coffee", :output => "marketing/js"

# Guard::Compass
#
# You don't need to configure watchers for guard 'compass' declaration as they generated
# from your Compass configuration file. You might need to define the Compass working directory
# and point to the configuration file depending of your project structure.
#
# Available options:
#
# * :workging_directory => Define the Compass working directory, relative to the Guardfile directory
# * :configuration_file => Path to the Compass configuration file, relative to :project_path
#
# Like usual, the Compass configuration path are relative to the :project_path

# guard 'compass', :project_path => 'not_current_dir', :configuration_file => 'path/to/my/compass_config.rb'
# guard :compass

# Compile stylesheets
guard 'compass', :configuration_file => "config/compass.rb" do
  watch(/^assets\/sass\/(.*)\.scss/)
end

guard 'process', :name => 'Minify CSS', :command => 'juicer merge marketing/css/app.css --force -c none' do
  watch %r{marketing/css/app\.css}
end

guard 'process', :name => 'Combine Javascript from CoffeeScript', :command => 'coffee -cbj marketing/js/app.js assets/coffee/' do
  watch %r{assets/coffee/.+\.coffee}
end

guard 'process', :name => 'Minify application javascript', :command => 'juicer merge marketing/js/app.js --force -s' do
  watch %r{marketing/js/app\.js}
end

# Watch for modifications in application.css and application.js 
# and reload the browser if so
guard 'livereload', :apply_js_live => true, :apply_css_live => true do
  watch(%r{marketing/css/app\.css})
  watch(%r{marketing/js/app\.js})
end
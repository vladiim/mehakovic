guard "compass", configuration_file: "config/compass.rb" do
  watch(/^assets\/sass\/(.*)\.scss/)
end

guard "process", name: "Combine CSS from SASS", command: "compass compile assets/sass/import.scss" do
  watch %r{/^assets/sass/.+\.scss}
end


guard "process", name: "Compile and minify css", command: "juicer merge css/unmini/* -o css/app.css --force" do
	watch %r{css/unmini/.+\.css}
end

guard "process", name: "Change minified css in _site", command: "cp css/app.css _site/css/app.css" do
	watch %r{css/app.css}
end

guard "process", name: "Combine Javascript from CoffeeScript", command: "coffee -o js/unmini -c assets/coffee" do
  watch %r{assets/coffee/.+\.coffee}
end

guard "process", name: "Minify application javascript", command: "juicer merge js/unmini/* -o js/app.js --force" do
  watch %r{js/app\.js}
end

guard "process", name: "Change minified js in _site", command: "cp js/app.js _site/js/app.js" do
	watch %r{js/app.js}
end

guard "livereload", apply_js_live: true, apply_css_live: true do
  watch(%r{css/app\.css})
  watch(%r{js/app\.js})
end
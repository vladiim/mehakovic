module Build
  class Html
    def call
      Dir['build/*haml'].each do |haml_file|
        file = "#{File.basename(haml_file).sub('haml', 'html')}"
        File.open(file, 'w') do |file|
          file.write(render_html(haml_file))
          file.close
        end
      end
    end

    private

    def render_html(file)
      Haml::Engine.new(File.read(file))
        .render(Object.new, skills: Build::Data.skills, logos: Build::Data.logos)
    end
  end
end

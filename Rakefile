require 'haml'
require 'dotenv/tasks'
require 'csv'

module Dat
  def self.skills
    # CSV.foreach('build/data/skills.csv', encoding: 'ISO-8859-1', headers: true)
    #   .inject([]) do |data, row|
    #     data << row.to_h
    # end
    csv_to_data('skills')
  end

  def self.logos
    csv_to_data('logos')
  end

  private

  def self.csv_to_data(file)
    CSV.foreach("build/data/#{file}.csv", encoding: 'ISO-8859-1', headers: true)
      .inject([]) do |data, row|
        data << row.to_h
    end
  end
end

task :build do
  Dir['build/*haml'].each do |haml_file|
    html = Haml::Engine.new(File.read(haml_file))
      .render(Object.new, skills: Dat.skills, logos: Dat.logos)
    file = "#{File.basename(haml_file).sub('haml', 'html')}"
    File.open(file, 'w') do |file|
      file.write(html)
      file.close
    end
  end
end

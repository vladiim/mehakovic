Dir['build/lib/*rb'].each do |file|
  require "#{Dir.pwd}/#{file}"
end

module Build
  def self.html
    Build::Html.new.call
  end
end

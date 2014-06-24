module Jekyll
	class CurrentYear < Liquid::Tag

		def initialize(tag_name, text, tokens)
			super
			@text = text
		end

		def render(context)
			"#{@text} #{Time.now.year}"
		end
	end
end

Liquid::Template.register_tag('current_year', Jekyll::CurrentYear)
module Jekyll
	module IntroTextFilter

    def intro_text(input)
    	"#{input.to_s[0, 95]}..."
    end

	end
end

Liquid::Template.register_filter(Jekyll::IntroTextFilter)
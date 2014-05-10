module Jekyll
	module IntroTextFilter

    def intro_text(input)
    	"#{ input.to_s[0, 85] }..."
    end

	end
end

Liquid::Template.register_filter(Jekyll::IntroTextFilter)

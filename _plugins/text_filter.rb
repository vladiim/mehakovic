module Jekyll
  module TextFilter

    def intro_text(input)
      "#{ input.to_s[0, 105] }..."
    end

    def un_capatalize(input)
      input.to_s.downcase
    end

    def un_commatize(input)
      input.sub ',', ''
    end

    def capatalize(input)
      input.capitalize
    end
  end
end

Liquid::Template.register_filter(Jekyll::TextFilter)

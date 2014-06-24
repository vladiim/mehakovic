module Jekyll
  module TextFilter
    AVE_WORDS_PER_MINUTE = 240

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

    def est_time_to_read(input)
      minutes = input < AVE_WORDS_PER_MINUTE ? "Under 1" : input / AVE_WORDS_PER_MINUTE

      "#{minutes} mins to read"
    end
  end
end

Liquid::Template.register_filter(Jekyll::TextFilter)

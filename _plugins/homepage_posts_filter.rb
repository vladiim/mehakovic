module Jekyll
  module HomepagePosts

    TITLES = [ "What is digital strategy?", "Product/UX strategy", "eBay - digital strategy" ]

    def homepage_posts(posts)
      posts.select { |post| TITLES.include? post.title }
    end
  end
end

Liquid::Template.register_filter(Jekyll::HomepagePosts)

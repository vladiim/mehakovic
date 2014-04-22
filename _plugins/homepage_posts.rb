module Jekyll
  module HomepagePosts

    TITLES = ["Digital marketing strategy"]

    def homepage_posts(posts)
      posts.select { |post| TITLES.include? post.title }
    end
  end
end
 
Liquid::Template.register_filter(Jekyll::HomepagePosts)
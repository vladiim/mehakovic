module Jekyll

  class TagPage < Page
    attr_reader :tag

    def initialize(site, tag)
      # require 'debugger'; debugger
      @site       = site
      @base       = site.source
      @dir, @tag  = tag, tag
      @name       = 'index.html'
      process_page
    end

    def process_page
      set_page_vars
      set_data_vars
    end

    def set_page_vars
      self.process(@name)
      self.read_yaml(File.join(@base, '_layouts'), 'tag_index.html')      
    end

    def set_data_vars
      self.data['title'] = @tag
      self.data['posts'] = site.posts.select { |p| p.tags.include? @tag}
    end
  end

  class TagPageGenerator < Generator

    def generate(site)
      @site = site
      site.tags.keys.each { |tag| generate_tag_page(site, tag) }
    end

    private

    def generate_tag_page(site, tag)
      site.pages << TagPage.new(site, tag)
    end
  end
end
module Jekyll

  class TagPage < Page
    def initialize(site, base, tag, name)
      @site = site
      @base = base
      @dir  = tag
      @name = name

      self.process(@name)
      self.read_yaml(File.join(base, '_layouts'), 'tag_index.html')
      self.data['title'] = tag
    end
  end

  class TagPageGenerator < Generator

    safe true

    def generate(site)
      site.tags.keys.each { |tag| generate_tag_page(site, tag) }
    end

    private

    def generate_tag_page(site, tag)
      site.pages << TagPage.new(site, site.source, tag, 'index.html')
    end
  end
end
Time.zone = 'London'

set :css_dir, 'stylesheets'

set :js_dir, 'javascripts'

set :images_dir, 'images'

# Build-specific configuration
configure :build do
  # For example, change the Compass output style for deployment
  # activate :minify_css

  # Minify Javascript on build
  # activate :minify_javascript

  # Enable cache buster
  # activate :asset_hash

  # Use relative URLs
  # activate :relative_assets

  # Or use a different image path
  # set :http_prefix, "/Content/images/"
end

configure :development do
  activate :livereload
end

helpers do
  def recent_articles(count = 3)
    articles = blog.articles

    articles[0...count]
  end

  def pretty_tags(article)
    tags = article.categories || article.tags
    string = ""
    tags.each do |t|
      string += ", " if string.length > 0 
      string += t.downcase
    end

    string
  end
end

activate :blog do |blog|
  # blog.prefix = "blog"

	blog.permalink = "{title}.html"

  # Matcher for blog source files
  blog.sources = "articles/{year}-{month}-{day}-{title}.html"
  blog.taglink = "tags/{tag}.html"
  blog.layout = "layouts/layout"
  blog.year_link = "{year}.html"
  blog.month_link = "{year}/{month}.html"
  blog.day_link = "{year}/{month}/{day}.html"
  blog.default_extension = ".md"

	# Enable pagination
  blog.paginate = true
  blog.per_page = 5
  blog.page_link = "page/{num}"
end

activate :directory_indexes

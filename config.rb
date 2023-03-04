require 'kramdown'
require 'extensions/sitemap.rb'
require 'zurb-foundation'
require 'sass'

activate :sprockets

###
## Blog settings
####

Time.zone = "America/Los_Angeles"

activate :blog do |blog|
  blog.prefix = "/blog"
  blog.permalink = ":year/:month/:day/:title.html"
  blog.sources = ":year-:month-:day-:title.html"
  blog.taglink = "categories/:tag.html"
  blog.layout = "article"
  blog.summary_separator = /(READMORE)/
  blog.summary_length = 500
  blog.year_link = ":year.html"
  blog.month_link = ":year/:month.html"
  blog.day_link = ":year/:month/:day.html"
  blog.default_extension = ".md"

  blog.tag_template = "/blog/categories.html"
  blog.calendar_template = "/blog/archive.html"

  blog.paginate = true
  blog.per_page = 5
  blog.page_link = "p:num"
end

page "/blog/feed.xml", :layout => false

###
# Compass
###

# Susy grids in Compass
# First: gem install susy
# require 'susy'

# Change Compass configuration
# compass_config do |config|
#   config.output_style = :compact
# end

###
# Page options, layouts, aliases and proxies
###

# With no layout
page "robots.txt", :layout => false
page "humans.txt", :layout => false

# With alternative layout
# page "/path/to/file.html", :layout => :otherlayout
#

###
# Helpers
###

# Automatic image dimensions on image_tag helper
# activate :automatic_image_sizes

# Methods defined in the helpers block are available in templates
# helpers do
#   def some_helper
#     "Helping"
#   end
# end

# Generate sitemap after build
activate :sitemap_generator

# Pretty urls
activate :directory_indexes
page "/404.html", :directory_index => false

# Asset dirs
set :css_dir, 'stylesheets'
set :js_dir, 'javascripts'
set :images_dir, 'images'

# Build-specific configuration
configure :build do
  activate :minify_css
  activate :minify_javascript

  # Enable cache buster
  # activate :cache_buster

  # Use relative URLs
  # activate :relative_assets

  # Compress PNGs after build
  # First: gem install middleman-smusher
  # require "middleman-smusher"
  # activate :smusher

  # Or use a different image path
  # set :http_path, "/Content/images/"
end


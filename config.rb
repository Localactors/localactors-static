#Markdown

####set :markdown_engine, :redcarpet

#Livereload
activate :livereload


activate :deploy do |deploy|
  deploy.method = :git
  deploy.branch = "master"
  deploy.remote = "build"
end


page "/", :layout => :html5
page "/call_for_projects.html", :layout => :html5
page "/guidelines.html", :layout => :html5
page "/our_approach.html", :layout => :html5
page "/projects.html", :layout => :html5
page "/header.html", :layout => :html5
page "/footer.html", :layout => :html5

page "/project_update.html", :layout => :html5
page "/project_localactors.html", :layout => :html5
page "/project_details.html", :layout => :html5
page "/publisher_profile.html", :layout => :html5
page "/profile_bar.html", :layout => :html5
page "/profile_bar_open.html", :layout => :html5
page "/how_to.html", :layout => :html5
page "/update/project_update_tab.html", :layout => :html5
page "/update/project_update_header.html", :layout => :html5
page "/update/project_sidebar.html", :layout => :html5
page "/404.html", :layout => :html5


require 'susy'


set :css_dir, 'content/css'

set :js_dir, 'scripts'

set :images_dir, 'content/images'


set :fonts_dir, 'content/fonts'


configure :development do
  activate :google_analytics do |ga|
    ga.tracking_id = false
  end
end

# Build-specific configuration
configure :build do
  # For example, change the Compass output style for deployment
  # activate :minify_css
  
  # # Minify Javascript on build
  # activate :minify_javascript
  
  # # Create favicon/touch icon set from source/favicon_base.png
  # activate :favicon_maker
  
  # # Enable cache buster
  # activate :cache_buster

  # activate :minify_html
  
  # # Use relative URLs
  # # activate :relative_assets

  # activate :smusher

   
activate :google_analytics do |ga|
  ga.tracking_id = 'UA-6201025-1'
end
  
  # Or use a different image path
  # set :http_path, "/Content/images/"
end

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
page "/localactors.html", :layout => :html5
page "/thank_you.html", :layout => :html5
page "/error404.html", :layout => :html5
page "/register_form.html", :layout => :html5
page "/login_form.html", :layout => :html5
page "/comment_form.html", :layout => :html5
page "/ask_question_form.html", :layout => :html5
page "/settings_form.html", :layout => :html5
page "/forgot_password_form.html", :layout => :html5
page "/guestbook_form.html", :layout => :html5
page "/donation.html", :layout => :html5
page "/tos.html", :layout => :html5

page "/project_update.html", :layout => :html5
page "/single_update.html", :layout => :html5
page "/guestbook.html", :layout => :html5
page "/ask_question.html", :layout => :html5
page "/project_in_list.html", :layout => :html5
page "/update/project_sidebar.html", :layout => :html5
page "/project_details.html", :layout => :html5
page "/publisher_profile.html", :layout => :html5
page "/profile_bar.html", :layout => :html5
page "/profile_bar_loggedout.html", :layout => :html5

page "/profile_bar_open.html", :layout => :html5
page "/profile_bar_stream_updates.html", :layout => :html5
page "/how_to.html", :layout => :html5
page "/update/project_update_tab.html", :layout => :html5
page "/update/project_update_header.html", :layout => :html5
page "/update/project_sidebar.html", :layout => :html5
page "/update/project_update_body.html", :layout => :html5
page "/update/update_block_qa.html", :layout => :html5
page "/update/update_block_list.html", :layout => :html5
page "/update/update_block_generic.html", :layout => :html5
page "/update/update_block_photo.html", :layout => :html5
page "/update/update_block_interview.html", :layout => :html5
page "/update/update_block_quote.html", :layout => :html5
page "/404.html", :layout => :html5


require 'susy'


set :css_dir, 'content/css'

set :js_dir, 'scripts'

set :images_dir, 'content/images'


set :fonts_dir, 'content/fonts'



# Build-specific configuration
configure :build do
  # For example, change the Compass output style for deployment
  activate :minify_css
  
  # # Minify Javascript on build
  activate :minify_javascript
  
  # # Create favicon/touch icon set from source/favicon_base.png
  activate :favicon_maker
  
  # # Enable cache buster
 activate :cache_buster

  # activate :minify_html
  
  # # Use relative URLs
  activate :relative_assets

  #activate :smusher


  compass_config do |config|
    config.http_images_path = "https://s3-eu-west-1.amazonaws.com/localactors-webapp/"
  end
  
  
  # Or use a different image path
  set :http_path, "https://s3-eu-west-1.amazonaws.com/localactors-webapp/"
end

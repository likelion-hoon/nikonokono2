source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

# 파일업로드 처리 lib
gem "paperclip"

# 이미지 처리 lib
gem "mini_magick"

# 간단한 from 양식을 위한 lib
gem 'simple_form'

# 게시글 삭제 기록 남기기 lib
gem 'paranoia', '~> 2.2'

# devise 한글화 lib
gem 'devise-i18n'

# 조회수 구현 lib
gem 'impressionist'

# tinymce 번역 lib
gem 'tinymce-rails-langs'

# 게시판 텍스트 편집기 lib
gem 'tinymce-rails'

# key, secret 보호 lib
gem 'figaro'

# 크롤링 기능 lib
gem 'nokogiri', '~> 1.8.2'

# naver 로그인 lib
gem 'omniauth-naver'

# google 로그인 lib
gem 'omniauth-google-oauth2'

# facebook 로그인 lib
gem 'omniauth-facebook'

# 외부 데이터베이스 사용을 위한 gem파일
gem 'mysql2'

# 게시판 페이징 기능 라이브러리
gem 'kaminari', :git => 'https://github.com/kaminari/kaminari'

# 회원가입, 로그인 지원 라이브러리
gem 'devise'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.1.4'

# Use sqlite3 as the database for Active Record
# gem 'sqlite3'

# Use Puma as the app server
gem 'puma', '~> 3.7'

# Use SCSS for stylesheets
gem 'bootstrap-sass', '~> 3.3.7'
gem 'sass-rails', '>= 3.2'
gem 'jquery-rails'

# fontawesome lib
gem 'font-awesome-rails'

# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.2'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 3.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  # Adds support for Capybara system testing and selenium driver
  gem 'capybara', '~> 2.13'
  gem 'selenium-webdriver'
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

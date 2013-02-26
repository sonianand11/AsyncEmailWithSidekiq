AsyncEmailWithSidekiq
=====================

Example of Sending Email Asynchronously using SideKiq Gem 

This example will show you how to send email asynchronously using sidekiq gem.
Note: 
1) As `Rails 4 has not included Queue feature in beta release`, you can find configuration for Rails.queue in development.rb and in Gemfile with comments.
2) Please make sure that you have started Redis server before running sidekiq workers.
If you have still not installed redis then go through redis site : `http://redis.io/download`

Installation
`bundle install`

Start Rails Server
`rails s`

Start Sidekiq Worker
`bundle exec sidekiq`

Browse url(I assume that you are running server at port 3000)
`http://localhost:3000/email_controller/index`

For more information about SideKiq Configuration please go through the github site.
`https://github.com/mperham/sidekiq/wiki`


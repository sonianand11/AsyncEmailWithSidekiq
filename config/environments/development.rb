AsyncEmailExample::Application.configure do
  # Settings specified here will take precedence over those in config/application.rb

  # In the development environment your application's code is reloaded on
  # every request. This slows down response time but is perfect for development
  # since you don't have to restart the web server when you make code changes.
  config.cache_classes = false

  # Log error messages when you accidentally call methods on nil.
  config.whiny_nils = true

  # Show full error reports and disable caching
  config.consider_all_requests_local       = true
  config.action_controller.perform_caching = false

  # Don't care if the mailer can't send
  config.action_mailer.raise_delivery_errors = false

  # Print deprecation notices to the Rails logger
  config.active_support.deprecation = :log

  # Only use best-standards-support built into browsers
  config.action_dispatch.best_standards_support = :builtin

  # Raise exception on mass assignment protection for Active Record models
  config.active_record.mass_assignment_sanitizer = :strict

  # Log the query plan for queries taking more than this (works
  # with SQLite, MySQL, and PostgreSQL)
  config.active_record.auto_explain_threshold_in_seconds = 0.5

  # Do not compress assets
  config.assets.compress = false

  # Expands the lines which load the assets
  config.assets.debug = true
  
  config.action_mailer.perform_deliveries = true
  config.action_mailer.raise_delivery_errors = true
  config.action_mailer.delivery_method = :smtp
  
  config.action_mailer.smtp_settings = {
    :address => 'smtp.gmail.com',
    :port => '587',
    :enable_starttls_auto => true,
    :user_name            => '****@gmail.com',
    :password             => '****',
    :authentication       => :plain, # :plain, :login, :cram_md5, no auth by default
    :domain               => "gmail.com"
  }
  
  #Below is Rails 4 Configuration for Queue. Working but not more useful in case if I want to create more than one queue
  
  # Default the production mode queue to an synchronous queue. You will probably
  # want to replace this with an out-of-process queueing solution.
  #config.queue = Rails::Queue::SynchronousQueue.new  

  # The queue that will be used to deliver the mail. The queue should expect a job
  # that responds to run.
  #config.action_mailer.queue = Rails::Queue::SynchronousQueue.new
  
  # You will probably want to change the job queue consumer from the default.
  #config.queue_consumer = Rails::Queue::ThreadedQueueConsumer.new(config.action_mailer.queue)
  #config.after_initialize do |app|
  #  app.queue_consumer = config.queue_consumer.start
  #  at_exit { app.queue.consumer.shutdown }
  #end
end

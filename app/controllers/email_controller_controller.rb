class EmailControllerController < ApplicationController
  def index
    #If going with Rails 4 config.
    #Rails.queue.push(User.new)
    
    HardWorker.perform_async()
    
  end
end

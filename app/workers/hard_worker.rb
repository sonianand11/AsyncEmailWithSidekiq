class HardWorker
  include Sidekiq::Worker

  def perform()
    Emailer.config_for_email.deliver
  end
end

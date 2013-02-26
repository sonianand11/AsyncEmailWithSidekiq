class User

  def run
    puts "****In User run****"
    Emailer.config_for_email.deliver
  end
  
end

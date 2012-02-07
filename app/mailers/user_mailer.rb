class UserMailer < ActionMailer::Base  
  add_template_helper(ApplicationHelper)
  extend ApplicationHelper
  
  default from: "#{app_name} <#{system_email}>"

  def reset_password_email(user)
    @user = user
    @url  = "#{root_url}/password_resets/#{user.reset_password_token}/edit"
    mail(:to => user.email,
         :subject => "Reset Your Password | Supply Side")
  end
end
# Preview all emails at http://localhost:3000/rails/mailers/user_mailer
class UserMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/user_mailer/welcome_email
  def welcome_email
    UserMailer.welcome_email
  end

  # Preview this email at http://localhost:3000/rails/mailers/user_mailer/farewell_email
  def farewell_email
    UserMailer.farewell_email
  end

end

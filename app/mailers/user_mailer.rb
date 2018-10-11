class UserMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.welcome_email.subject
  #
  def welcome_email(user)
    @greeting = "Hola"
    @user = user    
    mail to: @user.email, subject: 'Libraryapp te de la bienvenida ' + @user.name
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.farewell_email.subject
  #
  def farewell_email(user)
    @user = user	
	  mail to: @user.email, subject: 'Hasta pronto ' + @user.name
  end
end

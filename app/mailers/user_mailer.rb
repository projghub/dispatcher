class UserMailer < ActionMailer::Base
  default from: 'signup@befriendly.com'

  def signup_confirmaiton(user)
    @user = user

    mail to: "to@example.org", subject: 'Thanks for your interest'
  end
end

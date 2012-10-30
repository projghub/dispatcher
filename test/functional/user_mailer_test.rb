require 'test_helper'

class UserMailerTest < ActionMailer::TestCase
  test "signup_confirmaiton" do
    mail = UserMailer.signup_confirmaiton
    assert_equal "Signup confirmaiton", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end

class UserMailer < ActionMailer::Base
  default from: 'zuckymark@gmail.com'

  def sandwich_email(sandwich)
  	@sandwich = sandwich
  	@inspirational_quote = Rumi.quote
  	mail(to: "shailpatel2@gmail.com", subject: "SANDWICH")
  end

end

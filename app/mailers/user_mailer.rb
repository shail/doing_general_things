class UserMailer < ActionMailer::Base
  default from: 'zuckymark@gmail.com'

  def sandwich_email(sandwich)
  	@sandwich = sandwich
  	@inspirational_quote = Rumi.quote
  	mail(to: "make_sandwich@generalthings.com", subject: "SANDWICH")
  end

end

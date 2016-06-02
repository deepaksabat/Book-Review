class ReviewMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.review_mailer.new_review.subject
  #
  def new_review
    @greeting = "Hi"

    mail to: "to@example.org"
  end
end

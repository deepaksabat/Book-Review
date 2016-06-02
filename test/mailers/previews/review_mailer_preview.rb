# Preview all emails at http://localhost:3000/rails/mailers/review_mailer
class ReviewMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/review_mailer/new_review
  def new_review
    ReviewMailer.new_review
  end

end

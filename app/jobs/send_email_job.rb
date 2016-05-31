class SendEmailJob < ActiveJob::Base
  queue_as :default

  def perform(comment)
    ExampleMailer.sample_email(@comment.snippet.user).deliver_later
    # Do something later
  end
end

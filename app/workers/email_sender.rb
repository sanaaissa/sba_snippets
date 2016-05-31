class EmailSender

  @queue = :emails_queue

  def self.perform(comment_id)

    comment = Comment.find(comment_id)
    puts(comment_id)

    ExampleMailer.sample_email(comment.snippet.user).deliver_now!

  end

end

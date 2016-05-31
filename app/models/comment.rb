class Comment < ActiveRecord::Base


  after_create :send_email_to_comment_owner
  belongs_to :user
  belongs_to :snippet
  validates_presence_of :text, :snippet, :user



  def send_email_to_comment_owner
  #  ExampleMailer.sample_email(self.snippet.user).deliver_now!
  Resque.enqueue(EmailSender, id)
  end

end

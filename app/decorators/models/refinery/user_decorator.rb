Refinery::User.class_eval do
  include Mailboxer::Models::Messageable
  acts_as_messageable

  def name
    self.to_s
  end

  def mailboxer_email(message)
    email
  end

  def to_s
    email
  end
end
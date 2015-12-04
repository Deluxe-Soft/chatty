module MessagesHelper
  def self_or_other(message)
    "self"
  end

  def message_interlocutor(message)
    User.last
  end
end

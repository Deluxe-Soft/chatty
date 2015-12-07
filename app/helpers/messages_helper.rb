module MessagesHelper
  def self_or_other(message)
    message.conversation.user == current_user ? "self" : "other"
  end

  def message_interlocutor(message)
    message.conversation.user.id == message.conversation.sender_id ? User.find(message.conversation.sender_id) : User.find(message.conversation.recipient_id)
  end
end

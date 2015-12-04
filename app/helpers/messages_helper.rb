module MessagesHelper
  def self_or_other(message)
    Random.rand(2).zero? ? "self" : "other"
  end

  def message_interlocutor(message)
    User.all.shuffle.first
  end
end

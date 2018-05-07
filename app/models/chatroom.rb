class Chatroom < ApplicationRecord
  has_many :chatroom_users
  has_many :users, through: :chatroom_users
  has_many :messages

  def joined?(user)
    self.users.include?(user)
  end
end

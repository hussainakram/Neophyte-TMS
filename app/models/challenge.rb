class Challenge < ApplicationRecord
  belongs_to :project
  has_many :bugs
  has_many :quizzes, dependent: :destroy
  has_many :resources
  has_many :user_challenges
  has_many :users, through: :user_challenges

  def challenge_status(user)
    if self.user_challenges.where(user_id: user.id).present?
      self.user_challenges.where(user_id: user.id).last.status
    end
  end
end

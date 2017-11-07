class User < ApplicationRecord
  enum role: [:trainee, :trainer, :admin]
  after_initialize :set_default_role, :if => :new_record?
  has_many :projects
  has_many :quizzes, through: :quiz_attempts
  has_many :quiz_attempts

  def set_default_role
    self.role ||= :user
  end

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end

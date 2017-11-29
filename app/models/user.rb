class User < ApplicationRecord
  enum role: [:trainee, :trainer, :admin]
  after_initialize :set_default_role, if: :new_record?
  has_many :projects
  has_many :quizzes, through: :quiz_attempts
  has_many :quiz_attempts
  has_many :company_users
  has_many :companies, through: :company_users

  def set_default_role
    #self.role ||= :admin
  end

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end

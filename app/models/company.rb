class Company < ApplicationRecord
  has_many :departments
  has_many :company_users
  has_many :users, through: :departments
  has_many :projects
  has_many :users, through: :company_users
end

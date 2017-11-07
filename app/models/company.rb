class Company < ApplicationRecord
  has_many :departments
  has_many :users, through: :departments
  has_many :projects, through: :departments
end

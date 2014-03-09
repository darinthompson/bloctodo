class List < ActiveRecord::Base
  attr_accessible :name, :user_id

  has_many :items
  belongs_to :user

  validates :name, length: { minimum: 5, maximum: 250 }, presence: true
  validates :user, presence: true
end

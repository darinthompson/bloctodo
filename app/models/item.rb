class Item < ActiveRecord::Base
  attr_accessible :completed, :description, :list_id

  belongs_to :list

  validates :description, length: { minimum: 5 }, presence: true
  validates :list, presence: true

end

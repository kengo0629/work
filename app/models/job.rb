class Job < ApplicationRecord
  validates :name, presence: true
  validates :image, presence: true
  validates :text, presence: true
  validates :occupation, presence: true

  belongs_to :user
end

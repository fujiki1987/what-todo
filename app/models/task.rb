class Task < ApplicationRecord
  belongs_to :user
  has_many :notes
  validates :task_name, presence: true
end

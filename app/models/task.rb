class Task < ApplicationRecord
    validates :task_name, presence: true, uniqueness: true
    validates :task_description, presence: true, length: {minimum: 5}
    validates :deadline, presence: true

    belongs_to :category
end

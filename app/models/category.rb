class Category < ApplicationRecord
    validates :title, presence: true, uniqueness: true
    validates :description, presence: true, length: {minimum: 5}
    belongs_to :user
    has_many :tasks

    def color_badge
        case status
        when 'not-started'
          'secondary'
        when 'in-progress'
          'info'
        when 'complete'
          'success'
        end
      end
    
def status
    return 'not-started' if tasks.none?

    if tasks.all? { |task| task.iscompleted? }
      'complete'
    elsif tasks.any? { |task| task.in_progress? || task.iscompleted? }
      'in-progress'
    else
      'not-started'
    end
  end

    def percent_complete
        return 0 if tasks.none?

        complete_tasks = tasks.select {|task| task.iscompleted?}.count
        ((complete_tasks.to_f/tasks.count) * 100).round
    end

end

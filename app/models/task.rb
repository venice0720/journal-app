class Task < ApplicationRecord
    validates :task_name, presence: true, uniqueness: true
    validates :task_description, presence: true, length: {minimum: 5}
    validates :deadline, presence: true
    # validates :status, inclusion: { in: ['true', 'false'] }

    belongs_to :category


    STATUS_OPTIONS = [
        ['Not started', 'not-started'],
        ['In progress', 'in-progress'],
        ['Complete', 'complete']
      ]
    
      def readable_status
        case status
        when 'not-started'
          'Not started'
        when 'in-progress'
          'In progress'
        when 'complete'
          'Complete'
        end
      end
    
      def color_class
        case status
        when 'not-started'
          'secondary'
        when 'in-progress'
          'info'
        when 'complete'
          'success'
        end
      end
    
      def complete?
        iscompleted == 'complete'
      end
    
      def in_progress?
        iscompleted == 'in-progress'
      end
    
      def not_started?
        iscompleted == 'not-started'
      end
    end
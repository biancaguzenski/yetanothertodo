class Todo < ApplicationRecord

    def completed?
        completed_at?  # method from activerecord
    end

    def complete!
        touch :completed_at
    end
end

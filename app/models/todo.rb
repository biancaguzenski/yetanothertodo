class Todo < ApplicationRecord

    def completed?
        completed_at?  # method from activerecord
    end
end

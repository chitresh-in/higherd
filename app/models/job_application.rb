class JobApplication < ApplicationRecord
    belongs_to :opening
    belongs_to :user
end

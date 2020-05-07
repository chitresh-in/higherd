class Opening < ApplicationRecord
    belongs_to :employer

    has_many :job_applications
    has_many :users, through: :job_applications

    def user_can_apply(user_id)
		if self.job_applications.exists?(:user_id=> user_id)
			return false
		end

		return true

	end
end

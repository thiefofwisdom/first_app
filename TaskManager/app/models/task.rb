class Task < ActiveRecord::Base
	has_many :project_tasks
	before_destroy :ensure_not_referenced_by_any_project_tasks
	
	private
	def ensure_not_referenced_by_any_project_tasks
		if project_tasks.empty?
			return true
			else
				errors.add(:base, 'Project Tasks present')
				return false
			end
		end
  	end
end

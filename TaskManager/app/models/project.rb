class Project < ActiveRecord::Base
	has_many:project_tasks, dependent: :destroy
end

class Project < ApplicationRecord
<<<<<<< HEAD
    has_many :project_technologies, class_name: 'Technologies'
    has_many :technologies, through: :project_technologies
    accepts_nested_attributes_for :technologies
=======
    has_many :project_technologies, class_name: 'ProjectTechnology'
    has_many :technologies, through: :project_technologies
>>>>>>> b3bf2522305affd2c9c6247b18cb829527ef89d7
end

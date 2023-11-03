class Project < ApplicationRecord
    has_many :project_technologies, class_name: 'Technologies'
    has_many :technologies, through: :project_technologies
    accepts_nested_attributes_for :technologies
end

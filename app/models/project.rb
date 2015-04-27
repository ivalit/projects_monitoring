class Project < ActiveRecord::Base
  belongs_to :origin
  belongs_to :type_of_work
  has_many :development_progresses, :marks
end

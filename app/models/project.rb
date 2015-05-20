class Project < ActiveRecord::Base
  after_save :default_progress
  belongs_to :origin
  belongs_to :type_of_work
  has_many :development_progresses
  has_many :marks
  has_many :comments

  def default_progress
    (DevelopmentProgress.new({project_id: self.id, progress: 0})).save unless (self.development_progresses.last)
  end

  def last_progress
    development_progress = self.development_progresses.last
    development_progress.progress
  end

  def type_of_work
    TypeOfWorks.find(self.type_of_work_id).task_type
  end

  def origin
    Origins.find(self.origin_id).source
  end

  def curator
    Origins.find(self.origin_id).curator
  end
end

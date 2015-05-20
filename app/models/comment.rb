class Comment < ActiveRecord::Base
  def author
    Project.find(self.project_id).nickname
  end
end

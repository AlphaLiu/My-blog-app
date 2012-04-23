class Post < ActiveRecord::Base
  validates :title, :presence => true, :length => { :maximum => 140 }

  def formatted_post_time
   created_at.strftime("%Y-%m-%d")
  end
end

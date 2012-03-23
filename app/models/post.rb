class Post < ActiveRecord::Base
  validate :title, :presence => true, :length => { :maximum => 140 }
end

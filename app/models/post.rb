class Post < ActiveRecord::Base
    validates :pick, :presence => true
end

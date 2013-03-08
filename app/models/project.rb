class Project < ActiveRecord::Base
  attr_accessible :title


  def self.filter (search_title)
    return scoped unless search_title.present?
      where(['title LIKE ?', "%#{search_title}%"])
 	end
end

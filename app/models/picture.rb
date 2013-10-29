class Picture < ActiveRecord::Base
  attr_accessible :filepicker_url

  belongs_to :creation
  validates :filepicker_url, :presence => true
end

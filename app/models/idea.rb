class Idea < ActiveRecord::Base


  belongs_to :users
  has_many :updates, :dependent => :destroy
  has_many :pictures, :dependent => :destroy

  attr_accessible :desc, :featured, :progress, :title, :tag_list, :pictures_attributes, :pictures

  accepts_nested_attributes_for :pictures, :allow_destroy => true, :reject_if => lambda { |a| a[:filepicker_url].blank? }


  acts_as_taggable

end

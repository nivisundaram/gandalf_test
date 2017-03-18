class Person < ActiveRecord::Base
  # attr_accessible :title, :body
  #include Dirtyable
  include Dirtyobjects

  #validates :name, :presence => true
  #validates_associated :pets
  has_many :pets
  has_one :home
end

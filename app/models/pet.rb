class Pet < ActiveRecord::Base
  #include Dirtyable
  include Dirtyobjects
  belongs_to :person
  #validates :name, :presence => true
end

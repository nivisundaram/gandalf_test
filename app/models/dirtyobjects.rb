module Dirtyobjects
  attr_accessor :dirty_objects
  def dirty_associated_objects
    dirty_objects = Array.new

    if self.new_record? || self.changed?
      dirty_objects << self
    end

    associations = self.class.reflections.select { |k, v| v.collection? }.keys
    associations.each do |association_name|
      association_collection = self.send(association_name)
      association_collection.each do |item|
        if item.new_record? || item.changed?
          dirty_objects << item
        end
      end
    end
    dirty_objects
  end

  def print_dirty_associated_objects
    dirty_associated_objects.inspect
  end
end
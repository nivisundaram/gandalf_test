class PeopleController < ApplicationController

  def index
    p = Person.last
    pet1 = p.pets.first
    pet1.name = "joe"
    pets = p.pets
    p.pets.first.name = "gandalf"
   # p.pets.last.name = "toy"
    p.valid?
    p.print_dirty_associated_objects
  end

  def create
    require 'byebug'
    byebug


  end
end

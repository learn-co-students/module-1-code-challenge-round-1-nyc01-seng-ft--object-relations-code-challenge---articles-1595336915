require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


###  WRITE YOUR TEST CODE HERE ###

class Magazine
  attr_accessor :name, :category


  def initialize(name, category)
    @name = name
    @category = category

  end

   def mag_name(name)
      @name
   end 
end







### DO NOT REMOVE THIS
binding.pry

0

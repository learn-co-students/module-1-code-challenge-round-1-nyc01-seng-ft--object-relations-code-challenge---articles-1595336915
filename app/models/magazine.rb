class Magazine
  attr_accessor :name, :category

   @@all = []

  def initialize(name, category)
    @name = name
    @category = category
    
  end

   def mag_name(name)
      @name
   end 

   def mag_catagory
    @category = category
   end

    def self.all
      @@all
    end 
end

class Pokemon 
  
  attr_accessor :name, :weight, :height, :type, :gender
  
  @@all = []
  
  def initialize(attributes)
    attributes.each do |key, value|
      self.send("#{key}=", value) if self.respond_to?("#{key}=")
    end 
    save
  end 
  
  def save
    @@all << self 
  end 
  
  def self.all
    @@all 
  end 
  
end 
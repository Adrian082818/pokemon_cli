class Pokemon 
  
  attr_accessor :name, :weight, :height, :type, :gender
  
  @@all = []
  
  def initialize(attr_hash)
    attr_hash.each do |key, value|
      self.send("#{key}=", value) if self.respond_to?("#{key}=")
    save
    end 
  end 
  
  def save
    @@all << self 
  end 
  
  def self.all
    @@all 
  end 
end 
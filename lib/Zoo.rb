class Zoo
    attr_accessor :name, :location

    @@all = []
    @@animals = []
    def initialize(name, location)
        @name = name 
        @location = location 
        @@all << self 
    end 

    def self.animals 
        @@animals 
    end 

    def self.all
        @@all
    end 

    def animals 
        animals = @@animals.select{|animal| animal.zoo == self.name}
    end 

    def animal_species 
        animals.map{|animal| animal.species}.uniq
    end 

    def animal_nicknames 
        animals.map{|animal| animal.nickname}
    end 

    def self.find_by_location(location)
        zoos = @@all.select{|zoo| zoo.location == location}
        zoos.map{|zoo| zoo.name}
    end 
end

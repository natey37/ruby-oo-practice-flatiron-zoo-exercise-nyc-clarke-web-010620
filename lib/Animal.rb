class Animal
    attr_reader :species, :nickname
    attr_accessor :weight, :zoo

    @@all = []
    def initialize(species, weight, nickname, zoo)
        @species = species
        @weight = weight
        @nickname = nickname 
        @zoo = zoo 
        Zoo.animals << self 
        @@all << self 
    end 

    def self.all
        @@all
    end 

    def self.find_by_species(species)
        @@all.select{|animal| animal.species == species}
    end 
end 

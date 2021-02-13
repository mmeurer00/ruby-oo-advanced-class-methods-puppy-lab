class Dog
    attr_accessor :name

    @@all = []
    @@dog_names = []

    def initialize(name)
        @name = name
        @@dog_names << name
        save
    end

    def self.all
        @@all
    end

    def self.clear_all
        @@all.clear
    end

    def self.print_all
       @@all.each do |obj|
            puts obj.name
       end
    end

    def name
        @name
    end

    def save
        @@all << self
    end 
end
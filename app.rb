require 'pry'


class Car
    attr_reader :make, :color, :is_moving, :has_been_driven  # Creates getter/reader method for each attribute
    attr_writer :make #Creates setter/writer method for each attribute
    attr_accessor :color  #Creates both a getter and a setter for each attribute

    def initialize(make, color, is_moving)
        @make = make #instance variables
        @color = color
        @is_moving = is_moving
        @has_been_driven = false
    end

    def make  # <-- getter / reader method
        @make
    end

    def make= make #setter / writer method
        @make = make
    end
end

class Video_game
    attr_reader :name, :num_of_players, :console

    @@all = []

    def initialize name, num_of_players, console
        @name = name
        @num_of_players = num_of_players
        @console = console
        @@all << self
    end

    def self.all
        @@all
    end
    
    def self.names
        all.map do |video_game| 
            video_game.name
        end
    end

    def self.find_all_by_console console
        all.select do |video_game|
            video_game.console == console
        end
    end
end

vg1 = Video_game.new("Madden", 2, "Xbox")
vg2 = Video_game.new("Rainbow 6", 5, "Playstation")
vg3 = Video_game.new("Ratchet & Clank", 1, "PC")

binding.pry

#variable types

=begin
        @make #instance variable
        make #local variable
        @@make #class variable -- seen throughout entire class
        $make #global variable
        MAKE / Make #constant
=end

#instance method:  method that can be called on an instance of a class

# .self - self inside of an instance method will always produce selfvg1
require 'pry'

class Artist
    attr_accessor :name, :songs

    @@all = []
    def initialize(name)
        @name = name
        @@all << self
        @songs =[]
    end

    def self.all
        @@all
    end

    def add_song(song)
        @songs << song
    end

    def songs
        @songs
    end

    def self.find_or_create_by_name(name)
        artist_name = self.all.find {|el| el.name == name}
        if artist_name
            artist_name
        else
            artist = self.new(name)
            artist
        end
    end

    def print_songs
        @songs.each do |int|
            puts "#{int.name}"
            #binding.pry
        end
    end
end

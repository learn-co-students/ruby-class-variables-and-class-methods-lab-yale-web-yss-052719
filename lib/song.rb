require 'pry'

class Song
    
    attr_accessor :name, :artist, :genre
    
    @@count = 0
    @@genres = []
    @@artists = []

    def initialize (name,artist,genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count = @@count + 1

        @@genres << genre
        @@artists << artist
    end

    def self.count
        @@count
    end

    def self.genres
        @@genres.uniq
    end

    def self.artists
        @@artists.uniq
    end

    def self.genre_count
        return_hash = Hash.new
        self.genres.map do |genre|
            return_hash[genre] = @@genres.select{ |genre2| genre2 == genre}.size
        end
        return_hash
    end

    def self.artist_count
        return_hash = Hash.new
        self.artists.map do |artist|
            return_hash[artist] = @@artists.select{ |artist2| artist2 == artist}.size
        end
        return_hash
    end

end


require "pry"

class Song

    attr_accessor :name, :artist, :genre

    @@count = 0
    @@artists = []
    @@genres = []

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        @@artists << artist
        @@genres << genre
    end

    def self.genres
        @@genres.uniq
    end

    def self.count
        @@count
    end

    def self.artists
        @@artists = @@artists.uniq
    end

    song1 = Song.new("song1", "a1", "g1")
    song2 = Song.new("song2", "a2", "g2")
    song3 = Song.new("song3", "a3", "g2")

    def self.genre_count
        genre_count = Hash.new(0)
        @@genres.each {|genre| genre_count[genre] += 1}
        genre_count
    end

    def self.artist_count
        artist_count = Hash.new(0)
        @@artists.each {|artist| artist_count[artist] += 1}
        artist_count
    end
end
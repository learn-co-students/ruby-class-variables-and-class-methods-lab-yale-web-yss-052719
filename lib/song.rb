require 'pry'
class Song

@@count = 0
@@artists = []
@@genres = []
@@songs = []

attr_reader :count, :name, :genre, :artist, :artists

    
    def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count = @@count + 1 
    @@genres << genre
    @@artists<< artist
    end

    def self.artists
       uniqueArtists = @@artists.uniq 
       uniqueArtists
    end
    
    def self.genres
        uniqueGenres = @@genres.uniq
        uniqueGenres
    end
    
    def self.count
        @@count
    end

    def self.genre_count
        genreHash = {}
        @@genres.each do |genre|
            if genreHash.keys.include?(genre) == true 
                genreHash[genre] = genreHash[genre] + 1
            elsif genreHash.keys.include?(genre) == false
                genreHash[genre] = 1
                #binding.pry
            end
        end
        genreHash
    end

    def self.artist_count
        artistHash = {}
        @@artists.each do |artist|
            if artistHash.keys.include?(artist) == true 
                artistHash[artist] = artistHash[artist] + 1
            elsif artistHash.keys.include?(artist) == false
                artistHash[artist] = 1
                #binding.pry
            end
        end
        artistHash
    end
end
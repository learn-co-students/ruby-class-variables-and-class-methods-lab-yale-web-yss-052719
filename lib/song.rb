class Song
    attr_reader :name, :artist, :genre
    @@count = 0
    @@genres = []
    @@artists = []
    @@all = []
    def initialize(name, artist, genre)
        @name = name
        @genre = genre
        @artist = artist
        @@count += 1
        @@genres << @genre
        @@artists << @artist
        @@all << self
    end
    def self.count
        @@count
    end
    def self.original_genres
        @@genres
    end
    def self.original_artists
        @@artists
    end
    def self.genres
        @@genres.uniq
    end
    def self.artists
        @@artists.uniq
    end
    def self.all
        @@all
    end
    def self.genre_count
        count_hash(original_genres)
    end
    def self.artist_count
        count_hash(original_artists)
    end
end

# helper function 
def count_hash(data)
    new_hash = {}
    data.each do |item|
        if !new_hash.keys.include?(item)
            new_hash[item] = 0
        end
        new_hash[item] += 1
    end
    return new_hash
end
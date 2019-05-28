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
        genre_hash = {}
        original_genres.each do |genre|
            if !genre_hash.keys.include?(genre)
                genre_hash[genre] = 0
            end
            genre_hash[genre] += 1
        end
        return genre_hash
    end
    def self.artist_count
        artist_hash = {}
        original_artists.each do |artist|
            if !artist_hash.keys.include?(artist)
                artist_hash[artist] = 0
            end
            artist_hash[artist] += 1
        end
        return artist_hash
    end
end

class Song
    attr_accessor :artist, :genre, :name
    @@count = 0
    @@genres = []
    @@artists = []
    @@all = []

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@all << self
        @@count = @@count + 1
        @@artists << artist
        @@genres << genre
    end

    def self.count
        return @@count
    end

    def self.artists
        return @@artists.uniq
    end

    def self.genres
        return @@genres.uniq
    end

    def self.genre_count
        hash = {}
        #initialize each hash key to count of 0
        self.genres.each do |genre|
            hash[genre] = 0
        end

        #increment count each time you find instance of genre in array
        @@genres.each do |genre|
            if hash.keys.include?(genre)
                hash[genre] += 1
            else
            end
        end

        return hash
    end

    def self.artist_count
        hash = {}
        #initialize each hash key to count of 0
        self.artists.each do |artist|
            hash[artist] = 0
        end

        #increment count each time you find instance of genre in array
        @@artists.each do |artist|
            if hash.keys.include?(artist)
                hash[artist] += 1
            else
            end
        end

        return hash
    end





end

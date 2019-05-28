class Song
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

	attr_reader :name, :artist, :genre

	def self.count
		@@count
	end

	def self.artists
		@@artists.uniq
	end

	def self.genres
		@@genres.uniq
	end

	def self.genre_count
		genrehash = {}
		@@genres.each do |genre|
			if genrehash[genre]
				genrehash[genre] += 1
			else
				genrehash[genre] = 1
			end
		end
		genrehash
	end

	def self.artist_count
		artcount = {}
		@@artists.each do |artist|
			if artcount[artist]
				artcount[artist] += 1
			else
				artcount[artist] = 1
			end
		end
		artcount
	end
end

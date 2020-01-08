class Song
    attr_accessor :name, :artist, :genre
    @@count = 0
    @@genres = []
    @@artists = []

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        @@genres << genre
        @@artists << artist
    end

    def self.count
        @@count
    end

    def self.genres
        @@genres = @@genres.uniq
    end

    def self.artists
        @@artists = @@artists.uniq
    end

    def self.genre_count
        count = Hash[@@genres.collect { |genre| [genre, 0] } ]
        @@genres.each { |genre| count[genre] += 1 }
        return count
    end

    def self.artist_count
        count = Hash[@@artists.collect { |artist| [artist, 0] } ]
        @@artists.each { |artist| count[artist] += 1 }
        return count
    end
end
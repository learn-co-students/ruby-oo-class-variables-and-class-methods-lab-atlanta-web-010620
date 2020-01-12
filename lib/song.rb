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
        def self.count 
            return @@count
        end 

        def self.artists
            @@artists.uniq
        end 

        def self.genres
            @@genres.uniq
        end 
        
        def self.artist_count 
            num_artists = {}
            @@artists.each do |artist| 
                if num_artists[artist]
                    num_artists[artist] += 1 
                else 
                    num_artists[artist] = 1
                end 
            end 
            num_artists 
        end 
        
        def self.genre_count
            num_genres = {}

            @@genres.each do |genre|
                if num_genres[genre]
                    num_genres[genre] += 1 
                else 
                    num_genres[genre] = 1 
                end 
            end 
            num_genres
        end 
        
end 
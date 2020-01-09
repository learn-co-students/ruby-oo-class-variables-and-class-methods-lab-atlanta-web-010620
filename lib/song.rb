class Song 
    attr_accessor :name, :artist, :genre 

    # class variables 
    @@count = 0 
    @@artists = [] 
    @@genres = []
    @@songs = [] 


    def initialize(name,artist,genre)
        # set variables and push them to their arrays 
        @name = name 
        @artist = artist 
        @@artists << @artist 
        @genre = genre
        @@genres << @genre 
        # increase song count 
        @@count += 1
    end

    # class methods 
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
        #  is a class method that returns a hash of genres and the number of songs that have those genres (FAILED - 1)
        # make new hash with default value 0
        hash = Hash.new(0)
        @@genres.each do |genre|
            hash[genre]+=1 
        end 
        hash 
    end 

    def self.artist_count 
        # copies format of genre_count 
        hash = Hash.new(0)
        @@artists.each {|artist| hash[artist]+=1 }
        
        hash 
    end 

end


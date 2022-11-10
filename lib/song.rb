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
        @@count
    end

    def self.artists
        @@artists.uniq
    end

    def self.genres
        @@genres.uniq
    end

    def self.genre_count
        display = Hash.new
        self.genres.each do |genre|
            display[genre] = @@genres.count(genre)
        end
        display
    end

    def self.artist_count
        display = Hash.new
        self.artists.each do |artist|
            display[artist] = @@artists.count(artist)
        end
        display
    end

end
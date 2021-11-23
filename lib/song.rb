require 'pry'
class Song
    attr_accessor :name, :artist, :genre
    @@count = 0
    @@artists =[]
    @@genres = []
    @@genre_count ={}
    @@artist_count ={}
    def initialize (name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        if @@genres.include?(genre)
            @@genre_count[genre] += 1
        else
            @@genres.push(genre)
            @@genre_count[genre] = 1
        end
        if @@artists.include?(artist)
            @@artist_count[artist] +=1
        else
            @@artists.push(artist)
            @@artist_count[artist] = 1
        end
    end
    def self.count
        @@count
    end
    def self.genres
        @@genres
    end
    def self.artists
        @@artists
    end
    def self.genre_count
        @@genre_count
    end
    def self.artist_count
        @@artist_count
    end
end




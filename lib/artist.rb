require "pry"

class Artist
    attr_accessor :name ,:songs



    def initialize(name)
        @name=name
       # @songs=[]
       
  
        

    end
    

    def songs
        Song.all.select do |song| 
         
            self == song.artist


        end
      
      
    end
    def add_song(song)
        #@songs << song
        songs
        song.artist= self
        

    end
    def add_song_by_name(name)
        song=Song.new(name)
        add_song(song)

    end
    def self.song_count
        Song.all.length
    end

    


end
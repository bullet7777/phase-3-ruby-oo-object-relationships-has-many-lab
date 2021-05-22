require "pry"

class Author
    attr_accessor :name ,:posts



    def initialize(name)
        @name=name
       # @songs=[]
  
        

    end
    

    def posts
        Post.all.select do |post| 
         
            self == post.author


        end
      
      
    end
    def add_post(post)
        #@songs << song
        posts
        post.author= self
        

    end
    def add_post_by_title(title)
        post=Post.new(title)
        add_post(post)

    end
    def self.post_count
        Post.all.length
        
    
    end

    


end
# hashobj={name: "abhimanyu"}
# def mutate(mutate)
#end
#method class ruby documentation
#attr_accesor, getter, setter
#what happen when we write self.class in instance method
#library - member - books -   

class Book
    def initialize
        @name = "wings of fire"
        @author = "Dr. APJ Kalam"
        @no_of_pages = 110
        @language = "english"
        @publication = "next publication"
        #@issued_status = "not issued"
    end

    def read
        puts "#{author} welcoome you are reading #{name}"
    end

    def self.reading
        puts "class method is called"
    end

    def set_name(name)
        @name= name
    end
    def set_author(author)
        @author= author
    end
    def set_no_of_pages(no_of_pages)
        @no_of_pages= no_of_pages
    end
    def set_language(language)
        @language= language
    end
    def set_publication(publication)
        @publication= publication
    end
    def get_name
        @name
    end
    def author
        @author
    end
    def no_of_pages
        @no_of_pages
    end
    def language
        @language
    end
    def publication
        @publication
    end
    
end

wings_of_fire = Book.new
puts wings_of_fire.get_name
wings_of_fire.set_name("wings_of_fire(english)")
wings_of_fire.set_author("wings_of_fire(english)")
wings_of_fire.set_no_of_pages("wings_of_fire(english)")
wings_of_fire.set_language("wings_of_fire(english)")
Book.reading
puts wings_of_fire.get_name
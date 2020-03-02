
class Book
    def initialize
        @name = {"wings of fire"=>24,"someone once told me"=>43,"Freedom in Exile"=>49}
        @author = ["Dr. APJ Kalam","mr.s.k.","Dalai Lama"]
        @no_of_pages = [110,90]
        @language = "english"
        @publication = "next publication"
        @issued_status = "not issued"
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

    def borrow(name_of_book)
       @name[name_of_book]=@name[name_of_book].to_i-1
    end
    
end

class Member
    def initialize
    @id=[1,2,3]
    @name=["onkar","ani","ganesh"]  
    @gender
    end

    def get_name
      @name
    end

    def addnewmember()
      puts "enter name"
      name= gets.chomp
      @name << name
    end
end

member=Member.new
book = Book.new
    
    total_data={}
    i = "y"
while i=="y" do
  
  puts "1.Registration\n 2.withdraw book\n 3.check registered users\n 4.see all books\n 5.see register\n press any other number to exit "
  val=gets.chomp.to_i
    
    if(val==1) 
      member=Member.new
      member.addnewmember()
      puts "user registered successfully"


    elsif(val == 2)
      register_data={}
      puts "enter username"
      username = gets.chomp
      puts book.get_name
      puts "enter name of book"
      name_of_book = gets.chomp
      puts book.borrow(name_of_book)
      register_data[username]=[name_of_book]
      total_data=total_data.merge(register_data)      
      puts "congrats you have borrowed successfully"
  

    elsif(val == 3)
      puts  member.get_name

    elsif(val == 4)
      puts book.get_name
    
    elsif(val == 5)
      puts total_data
    else 
      break
    end

end


class Book
    @@bookarray = []
    def initialize(name,author,copies)
        @name=name #= {"wings of fire"=>24,"someone once told me"=>43,"Freedom in Exile"=>49}
        @author=author #= ["Dr. APJ Kalam","mr.s.k.","Dalai Lama"]
        @no_of_pages #= [110,90]
        @language #= "english"
        @publication #= "next publication"
        @issued_status# = "not issued"
        @copies=copies
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
    def set_copies(copies)
        @copies=copies
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
    def copies
        @copies
    end

    def borrow(name_of_book)
       @name[name_of_book]=@name[name_of_book].to_i-1
    end

    def addbook
        @@bookarray.push(self)
    end

    def getbookarray
        @@bookarray.each do |var|
            puts "#{var.get_name} #{var.author} #{var.copies}"
        end
    end
    def get_book_detail
        @@bookarray.each do |var|
            puts "name of book :#{var.get_name}\n name of author:#{var.author}\n number of copies :#{var.copies}\n"
        end
    end
end

class Member

   
    def initialize(id,name,gender)
    @id=id
    @name=name
    @gender=gender
    @count_of_book=[]
    end

    def addmember
        @@memberarray.push(self)
    end

    def get_name
      puts "name : #{name}\n gernder: #{gender}\n book name:#{count_of_book}"
    end

        def addnewmember()
      puts "enter name"
      name= gets.chomp
      @name << name
     end
        def borrow(name,author)
        book=Book.new(name,author,12)
        #book.name=name
        #book.author=author
        @count_of_book.push(book)
        end
        def getdetails
        @count_of_book.each do |var|
            puts "book name : #{var.get_name}\n book author : #{var.author}\n book copies :#{var.copies}"
            end
      end
    
    end

member1=Member.new(12,"onkar","male")
member2=Member.new(12,"ganesh","male")
member3=Member.new(23,"vivek","male")
book=Book.new("onkar","wof","sss")

for i in 0..2
puts "enter book name"
name =gets.chomp
puts "enter author name"
author = gets.chomp
puts "enter number of copies"
copies = gets.chomp
bookobj = Book.new(name,author,copies)
bookobj.addbook()
end

    book.getbookarray
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
      book.get_book_detail
      puts "enter name of book"
      name_of_book = gets.chomp
      puts "name of author"
      author = gets.chomp
      member3.borrow(name_of_book,author)

      #puts book.borrow(name_of_book)
      #register_data[username]=[name_of_book]
      #total_data=total_data.merge(register_data)      
      puts "congrats you have borrowed successfully"
  

    elsif(val == 3)
      puts  member.get_name

    elsif(val == 4)
      member3.getdetails
    
    elsif(val == 5)
      puts total_data
    else 
      break
    end
 end


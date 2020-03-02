module Swimable
    #def swim
      #  puts "i can swim"
    #end
end

class Animal
    include Swimable
end

class Human
    include Swimable
end

#Animal.new.swim
#Human.new.swim

#modeules are used for including common methods into classes
#concerns 

module Swimable
    module Swim1
        def swim
            puts "this is swim1"
        end
    end

    module Swim2
        def swim
            puts "this is swim2"
        end
    end
end



class Animal
    include Swimable::Swim2 #use include  extrend and prepend in this

    def swim
        puts "class method"
    end    
end


Animal.new.swim
#try all access specifiers inside module

#documents - class specific

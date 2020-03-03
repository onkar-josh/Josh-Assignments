module Methods
    
    Location =  ["deccan","kothrud","model colony"]
    Area = ["50 * 350","50 * 750","1150 * 1350"]
    Prize = ["5000", "9000", "15000"]
    Status = ["rental","selling","rental","selling"]

    module Rental_deals
        def see_rental_properties(status)
            i = 0
            while(i<Location.length) do
              if Status[i.to_i] == status
                puts "======================================================================"
                puts "\n property number : #{i.to_i+1}.\n Location is : #{Location[i.to_i]}\n Area is : #{Area[i.to_i]}\n Prize is : #{Prize[i.to_i]}\n Property Status : #{Status[i.to_i]}\n"
              end 
                i += 1
            end
        end
        def add_rental_properties(location,area,prize,status)
            Location << location
            Area << area
            Prize << prize 
            Status<< status
        end
        def buy_properties(prop_name)
            index = Location.find_index(prop_name).to_i
            Location.delete_at(index)
            Area.delete_at(index)
            Prize.delete_at(index)
            Status.delete_at(index)
        end
    end

end

class Hotel
    include Methods::Rental_deals
    
    def  add_rent_properties
        #see_rental_properties
        puts "\nenter location"
        location = gets.chomp
        puts "enter area in sq. feet"
        area = gets.chomp
        puts "enter prize"
        prize = gets.chomp
        puts "enter type of property (rental or selling)"
        status = gets.chomp
        add_rental_properties(location,area,prize,status)
        puts "\nyou have successfully added property\n"
    end

    def buy_property
        puts "enter property name you want to buy"
        prop_name = gets.chomp
        buy_properties(prop_name)
        puts "property buyed successfully"
    end

    def take_on_rent
        puts "enter property name you want to buy"
        prop_name = gets.chomp
        buy_properties(prop_name)
        puts "property buyed successfully"
    end

end

puts "welcome to yoyo house"
ch=1
while(ch)

puts "\n 1. see rental properties\n 2. see selling property\n 3. Buy property\n 4. add property\n 5. take property on rent\n enter any key to exit\n\n please enter your choice"
ch = gets.chomp.to_i

case ch
when 1 
    Hotel.new.see_rental_properties("rental")
when 2
    Hotel.new.see_rental_properties("selling")
when 3
    Hotel.new.buy_property
when 4
    Hotel.new.add_rent_properties 
when 5
    Hotel.new.take_on_rent
else
    break
end

end

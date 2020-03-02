#irb
#email
#phoneno
#ipadress
#map,collect,select,with-index

 
puts "=============================email validation=============================="
if "4ohnppo09@gmai.com".match /^[a-zA-Z]+\d+@\w+\.com$/
    puts "valid email"
else
    puts "invalid email"
end

puts "===========================number validation==============================="
if "9999999999".match /[0-9]+{10}/
    puts "valud mobile"
else
    puts"invalid mobile"
end

puts "===========================splitting problem=============================="
input_string ="a12b15c27d20e32a30b45"
seperated_numbers = input_string.split(/[a-z]/)
seperated_characters = input_string.split(/[0-9]+/)
#print seperated_numbers
#print seperated_characters

h={}
i=0
while i< seperated_characters.length do

    if h.include?(seperated_characters[i])
        h[seperated_characters[i]]=h[seperated_characters[i]].to_i + seperated_numbers[i+1].to_i
     else
    h[seperated_characters[i]]=seperated_numbers[i+1]
    end

    i+=1
end

h.each do |key,value|
    puts "#{key} : #{value}"
end  

puts "=================================ip validation=============================="
ip_addr= "255.234.23.2a6"
splitted_arr = ip_addr.split(/\./)
puts splitted_arr
i = 0
count=0
while i<4
    if(splitted_arr[i].to_i<256)
        count += 1
    elsif(ip_addr.match /[a-z]/)
        break
	else
	break
    end
    i+=1
end

if count==4
    puts "valid ip"
else
    puts "invalid ip"
end

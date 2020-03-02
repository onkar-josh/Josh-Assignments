#assign proc and lambda difference
arr["onkar","yash","kunal"]
def print_name (arr)
    for name in arr
    yield(name)
    end
end

print_name(arr)
puts name
end


#################
print_name = -> {puts "ganesh"}
print_name.call

################

def get_short_name
    query = {
            "india"=>"ind",
            "pakistan"=>"pak",
    }
    -> (name) {query[name]}
end

short_name = get_short_name
short_name.call("india")
###############################

def print_my_name (name)
    yield(name)
end

print_my_name (name)
    puts name
end


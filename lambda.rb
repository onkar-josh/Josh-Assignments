array = ["onkar","shubham","sunil"]
def find_name array
    for name in array
        yield(name)
    end
end

find_name array do |name|
 puts name
end
puts "======================================"
#####################################

def one_to_three
    yield 1
    yield 2
    yield 3
end

one_to_three {|num| puts num}

puts "======================================="


def explicit_calling(&block)
    block.call
end

explicit_calling {puts "explicit function called"}

puts "================================"

arr = ["onkar","mahadwar","sukkhwinder"]


def explicit_function (arr,&block)
    for name in arr
    block.call(name)
    end
end

explicit_function arr do |name|
    puts "mr. #{name}"
end

puts "================================="

say_something =-> {puts "hii here your lambda function is working  properly"}
say_something.call 
say_something.()

puts "=================================="

times_to_function =->(num) {num * 2}
times_to_function.call(10)

puts "==================================="

times_two = ->(x) { x * 2 }
times_two.call(10)

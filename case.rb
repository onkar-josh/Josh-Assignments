#!/usr/share/rvm/rubies/ruby-2.6.3/bin/ruby
grade = "A"
case grade
when "A"
    puts "congrats you are pass"
when "B"
    puts "you have to try"
else
    puts "in default block"
end

marks = 10

case 
when marks > 90
    puts "you are brilliant"
when marks < 90
    puts "you are good"
else
    puts "you are at 90"
end

grade = 'A'
case grade
when 'A' , 'B'
    puts "good"
else
    puts "bad"
end
# Write your code here.

# #push adds to the end of an array. shovel method #<< is the same as #push
# #unshift adds it to the beginning of the array.
# #concat combines arrays without chaning the original.

# #pop removes the last element of an array
# #shift removes the first element of an array
katz_deli = []

def line(katz_deli)
    if katz_deli.empty?
        puts "The line is currently empty."
    else
        line_status = katz_deli.map.with_index { |person, index| "#{index + 1}. #{person}" }.join(" ")
        puts "The line is currently: #{line_status}"
    end
end

# or
def line(katz_deli)
if katz_deli.empty?
    puts "The line is currently empty."
  else
    line_status = "The line is currently:"
    katz_deli.each_with_index do |person, index|
      line_status += " #{index + 1}. #{person}"
    end
    puts line_status
  end
end

# 2. Build a method that a new customer will use when entering the deli. The
# `#take_a_number` method should accept two arguments, the array for the current
# line of people (`katz_deli`), and a string containing the name of the person
# joining the end of the line. The method should call out (`puts`) the person's
# name along with their position in line. **Top-Tip:** _Remember that people
# like to count from 1, not from 0 like computers._
# def take_a_number(katz)

def take_a_number(katz_deli, name)
    katz_deli << name
    position = katz_deli.length
    puts "Welcome, #{name}. You are number #{position} in line."
end

# 3. Build the `#now_serving` method which should call out (i.e. `puts`) the next
#    person in line and then remove them from the front. If there is nobody in
#    line, it should call out (`puts`) that
#    `"There is nobody waiting to be served!"`.

def now_serving(katz_deli)
    if katz_deli.empty?
        puts "There is nobody waiting to be served!"
    else
        serving_person = katz_deli.shift
        puts "Currently serving #{serving_person}."
    end
end
#Lotto lottery match finder
lottery = Array.new(6) { rand(1..100)}
puts "Type 6 numbers from 1 to 100, separated by commas to check matching lottery numbers"
nums = gets.chomp.split(",").map {|n| n.to_i}
nums.slice(0)
until nums.length < 6
  nums.pop
end
matches = nums.select { |n| lottery.include?(n)}
if !matches.empty?
  puts "Congrats! You have #{matches.length} matches!"
puts "Your numbers are : #{nums}, lottery numbers are #{lottery} \nMatching numbers are : #{matches}"
else
  puts "Im sorry, your numbers doesn't match to lottery numbers. \nLottery numbers are : #{lottery}"
end

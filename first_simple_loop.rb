lottery = Array.new(6) { rand(1..100)}
wins = Array.new(6) { rand(1..100)}
times = 0
until lottery == wins
  puts "Oops, you didn't win in lottery, we try again. It's attempt number : #{times}"
  times += 1
end

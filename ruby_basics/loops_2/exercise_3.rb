process_the_loop = [true, false].sample

loop do
  p (process_the_loop ? "The loop was processed!" : "The loop wasn't processed!")
  break
end
def grandfather_clock(&block)
  now_hour = Time.now.hour
  while now_hour >= 0
    if now_hour > 12
      puts "#{block.call} : #{now_hour % 12}:00 PM"
      now_hour -= 1
    else
      puts "#{block.call} : #{now_hour}:00 AM"
      now_hour -= 1
    end
  end
end
grandfather_clock do
  print "DONG!"
end

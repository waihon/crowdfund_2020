project1 = "ABC"
fund1 = 1000
project2 = "LMN"
fund2 = 3000
project3 = "XYZ"
fund3 = 2150
project4 = "PQR"
fund4 = 4800

puts "Projects:\n\t#{project1}\n\t#{project2}\n\t#{project3}\n\t#{project4}"
puts "#{project1.upcase} has a fund of #{fund1}."
puts "#{project2.upcase} has a health of #{fund2}."
puts "#{project3.upcase} has a fund of #{fund3}.".center(50, "*")
puts "#{project4.upcase.ljust(30, '.')} #{fund4} fund"

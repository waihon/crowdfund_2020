def project_intro(project, fund)
  "#{project.upcase.ljust(30, '.')} #{fund} fund"
end

project1 = "ABC"
fund1 = 1000
project2 = "LMN"
fund2 = 3000
project3 = "XYZ"
fund3 = 2150
project4 = "PQR"
fund4 = 4800

puts project_intro(project1, fund1)
puts project_intro(project2, fund2)
puts project_intro(project3, fund3)
puts project_intro(project4, fund4)

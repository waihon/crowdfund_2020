require_relative 'project'
require_relative 'fund_request'

project1 = Project.new("LMN", 500, 3000)
project2 = Project.new("XYZ", 25, 75)
project3 = Project.new("PQR", 2000, 15000)
fund_request = FundRequest.new("VC-Friendly Start-up Projects")
fund_request.add_project(project1)
fund_request.add_project(project2)
fund_request.add_project(project3)
fund_request.request_funding
fund_request.remove_project(project2)
project4 = Project.new("ABC", 1000, 8000)
fund_request.add_project(project4)
fund_request.request_funding

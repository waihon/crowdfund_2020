class Project
  attr_reader :current_fund, :target_fund
  attr_writer :name

  def initialize(name, initial_fund, target_fund)
    @name = name
    @current_fund = initial_fund
    @target_fund = target_fund
  end

  def add_fund(fund=25)
    @current_fund += fund
    puts "Project #{@name} got more funds!"
  end

  def remove_fund(fund=15)
    @current_fund -= fund
    puts "Project #{@name} lost some funds!"
  end

  def to_s
    "Project #{@name} has $#{@current_fund} in funding towardss a goal of $#{@target_fund}."
  end

  def shortfall
    @target_fund - @current_fund
  end
end

class FundRequest
  def initialize(name)
    @name = name
    @projects = []
  end

  def add_project(project)
    @projects << project
  end

  def remove_project(project)
    @projects.delete(project)
  end

  def request_funding
    puts "There are #{@projects.size} projects in #{@name}:"
    @projects.each do |project|
      puts project
    end
    @projects.each do |project|
      project.add_fund
      project.remove_fund
      project.add_fund
      puts project
    end
  end
end

if __FILE__ == $0
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
end

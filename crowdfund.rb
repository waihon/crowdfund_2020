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

if __FILE__ == $0
  project1 = Project.new("LMN", 500, 3000)
  project2 = Project.new("XYZ", 25, 75)
  project3 = Project.new("PQR", 2000, 15000)
  projects = [project1, project2, project3]
  puts "There are #{projects.size} projects:"
  projects.each do |project|
    puts project
  end
  projects.each do |project|
    project.remove_fund
    project.add_fund
    puts project
  end
  projects.pop
  project4 = Project.new("ABC", 1000, 8000)
  projects.push(project4)
  projects.each do |project|
    puts project
  end
end

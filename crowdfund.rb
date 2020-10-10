class Project
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
end

if __FILE__ == $0
  project1 = Project.new("LMN", 500, 3000)
  puts project1
  project2 = Project.new("XYZ", 25, 75)
  puts project2
  project1.remove_fund
  project2.add_fund
  puts project1
  puts project2
end

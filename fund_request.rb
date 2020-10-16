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

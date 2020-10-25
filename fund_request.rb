require_relative 'dice'

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
    dice = Dice.new
    @projects.each do |project|
      case dice.roll
      when 1, 3, 5
        project.remove_fund
      when 2, 4, 6
        project.add_fund
      end
      puts project
    end
  end
end

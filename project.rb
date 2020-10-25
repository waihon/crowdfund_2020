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

  def fully_funded?
    shortfall <= 0
  end
end

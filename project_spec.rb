require_relative 'project'

describe Project do

  it "has an initial target funding amount"
  before do
    @initial_fund = 100
    @project = Project.new("ABC", @initial_fund, @initial_fund * 50)
  end


  it "computes the total funding outstanding as the target funding amount minus the funding amount"

  it "increases funds by 25 when funds are added"

  it "decreases funds by 15 when funds are removed"

  it "has a default value of 0 for funding amount"

end

require_relative 'project'

describe Project do

  before do
    @initial_fund = 100
    @funding_requests = 500
    @fund_added = 25
    @fund_removed = 15
    @target_fund = @initial_fund + (@funding_requests * @fund_added)
    @project = Project.new("ABC", @initial_fund, @target_fund)

    $stdout = StringIO.new
  end

  it "has an initial target funding amount" do
    expect(@project.current_fund).to eq(@initial_fund)
  end

  it "computes the total funding outstanding as the target funding amount minus the funding amount" do
    expect(@project.shortfall).to eq(@target_fund - @initial_fund)
  end

  it "increases funds by 25 when funds are added" do
    @project.add_fund

    expect(@project.current_fund).to eq(@initial_fund + @fund_added)
  end

  it "decreases funds by 15 when funds are removed" do
    @project.remove_fund

    expect(@project.current_fund).to eq(@initial_fund - @fund_removed)
  end

  it "is fully funded if current fund equals target fund" do
    @funding_requests.times do
      @project.add_fund
    end

    expect(@project).to be_fully_funded
  end

  it "is fully funded if current fund is more than target fund" do
    (@funding_requests + 1).times do
      @project.add_fund
    end

    expect(@project).to be_fully_funded
  end

  it "is not fully funded if current fund is less than target fund" do
    (@funding_requests - 1).times do
      @project.add_fund
    end

    expect(@project).not_to be_fully_funded
  end

end

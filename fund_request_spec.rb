require_relative 'fund_request'
require_relative 'project'

describe FundRequest do

  before do
    @fund_request = FundRequest.new("VC-Friendly Startup Projects")

    @initial_fund = 1000
    target_fund = @initial_fund * 20
    @project = Project.new("XYZ", @initial_fund, target_fund)

    @fund_request.add_project(@project)

    $stdout = StringIO.new
  end

  it "removes fund from a project if an odd number is rolled" do
    allow_any_instance_of(Dice).to receive(:roll).and_return(1)

    @fund_request.request_funding

    expect(@project.current_fund).to be < @initial_fund
  end

  it "adds fund to a project if an even number is rolled" do
    allow_any_instance_of(Dice).to receive(:roll).and_return(2)

    @fund_request.request_funding

    expect(@project.current_fund).to be > @initial_fund
  end

end

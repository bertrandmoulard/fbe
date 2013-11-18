require 'spec_helper'

describe "feedbacks/show" do
  before(:each) do
    @feedback = assign(:feedback, stub_model(Feedback))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end

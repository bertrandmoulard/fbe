require 'spec_helper'

describe "feedbacks/index" do
  before(:each) do
    assign(:feedbacks, [
      stub_model(Feedback),
      stub_model(Feedback)
    ])
  end

  it "renders a list of feedbacks" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end

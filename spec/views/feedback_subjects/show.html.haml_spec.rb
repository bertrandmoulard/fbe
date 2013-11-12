require 'spec_helper'

describe "feedback_subjects/show" do
  before(:each) do
    @feedback_subject = assign(:feedback_subject, stub_model(FeedbackSubject,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
  end
end

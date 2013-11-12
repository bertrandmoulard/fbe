require 'spec_helper'

describe "feedback_subjects/index" do
  before(:each) do
    assign(:feedback_subjects, [
      stub_model(FeedbackSubject,
        :name => "Name"
      ),
      stub_model(FeedbackSubject,
        :name => "Name"
      )
    ])
  end

  it "renders a list of feedback_subjects" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end

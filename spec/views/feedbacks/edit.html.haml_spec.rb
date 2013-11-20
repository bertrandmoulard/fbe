require 'spec_helper'

describe "feedbacks/edit" do
  before(:each) do
    @feedback = assign(:feedback, stub_model(Feedback,
      :feedback_subject_id => 1
    ))
  end

  it "renders the edit feedback form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", feedback_path(@feedback), "post" do
      assert_select "input#feedback_feedback_subject_id[name=?]", "feedback[feedback_subject_id]"
    end
  end
end

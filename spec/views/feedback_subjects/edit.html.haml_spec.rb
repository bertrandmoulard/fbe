require 'spec_helper'

describe "feedback_subjects/edit" do
  before(:each) do
    @feedback_subject = assign(:feedback_subject, stub_model(FeedbackSubject,
      :name => "MyString"
    ))
  end

  it "renders the edit feedback_subject form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", feedback_subject_path(@feedback_subject), "post" do
      assert_select "input#feedback_subject_name[name=?]", "feedback_subject[name]"
    end
  end
end

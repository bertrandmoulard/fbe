require 'spec_helper'

describe "feedback_subjects/new" do
  before(:each) do
    assign(:feedback_subject, stub_model(FeedbackSubject,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new feedback_subject form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", feedback_subjects_path, "post" do
      assert_select "input#feedback_subject_name[name=?]", "feedback_subject[name]"
    end
  end
end

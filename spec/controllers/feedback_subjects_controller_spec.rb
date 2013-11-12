require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe FeedbackSubjectsController do

  # This should return the minimal set of attributes required to create a valid
  # FeedbackSubject. As you add validations to FeedbackSubject, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { { "name" => "MyString" } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # FeedbackSubjectsController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all feedback_subjects as @feedback_subjects" do
      feedback_subject = FeedbackSubject.create! valid_attributes
      get :index, {}, valid_session
      assigns(:feedback_subjects).should eq([feedback_subject])
    end
  end

  describe "GET show" do
    it "assigns the requested feedback_subject as @feedback_subject" do
      feedback_subject = FeedbackSubject.create! valid_attributes
      get :show, {:id => feedback_subject.to_param}, valid_session
      assigns(:feedback_subject).should eq(feedback_subject)
    end
  end

  describe "GET new" do
    it "assigns a new feedback_subject as @feedback_subject" do
      get :new, {}, valid_session
      assigns(:feedback_subject).should be_a_new(FeedbackSubject)
    end
  end

  describe "GET edit" do
    it "assigns the requested feedback_subject as @feedback_subject" do
      feedback_subject = FeedbackSubject.create! valid_attributes
      get :edit, {:id => feedback_subject.to_param}, valid_session
      assigns(:feedback_subject).should eq(feedback_subject)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new FeedbackSubject" do
        expect {
          post :create, {:feedback_subject => valid_attributes}, valid_session
        }.to change(FeedbackSubject, :count).by(1)
      end

      it "assigns a newly created feedback_subject as @feedback_subject" do
        post :create, {:feedback_subject => valid_attributes}, valid_session
        assigns(:feedback_subject).should be_a(FeedbackSubject)
        assigns(:feedback_subject).should be_persisted
      end

      it "redirects to the created feedback_subject" do
        post :create, {:feedback_subject => valid_attributes}, valid_session
        response.should redirect_to(FeedbackSubject.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved feedback_subject as @feedback_subject" do
        # Trigger the behavior that occurs when invalid params are submitted
        FeedbackSubject.any_instance.stub(:save).and_return(false)
        post :create, {:feedback_subject => { "name" => "invalid value" }}, valid_session
        assigns(:feedback_subject).should be_a_new(FeedbackSubject)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        FeedbackSubject.any_instance.stub(:save).and_return(false)
        post :create, {:feedback_subject => { "name" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested feedback_subject" do
        feedback_subject = FeedbackSubject.create! valid_attributes
        # Assuming there are no other feedback_subjects in the database, this
        # specifies that the FeedbackSubject created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        FeedbackSubject.any_instance.should_receive(:update).with({ "name" => "MyString" })
        put :update, {:id => feedback_subject.to_param, :feedback_subject => { "name" => "MyString" }}, valid_session
      end

      it "assigns the requested feedback_subject as @feedback_subject" do
        feedback_subject = FeedbackSubject.create! valid_attributes
        put :update, {:id => feedback_subject.to_param, :feedback_subject => valid_attributes}, valid_session
        assigns(:feedback_subject).should eq(feedback_subject)
      end

      it "redirects to the feedback_subject" do
        feedback_subject = FeedbackSubject.create! valid_attributes
        put :update, {:id => feedback_subject.to_param, :feedback_subject => valid_attributes}, valid_session
        response.should redirect_to(feedback_subject)
      end
    end

    describe "with invalid params" do
      it "assigns the feedback_subject as @feedback_subject" do
        feedback_subject = FeedbackSubject.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        FeedbackSubject.any_instance.stub(:save).and_return(false)
        put :update, {:id => feedback_subject.to_param, :feedback_subject => { "name" => "invalid value" }}, valid_session
        assigns(:feedback_subject).should eq(feedback_subject)
      end

      it "re-renders the 'edit' template" do
        feedback_subject = FeedbackSubject.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        FeedbackSubject.any_instance.stub(:save).and_return(false)
        put :update, {:id => feedback_subject.to_param, :feedback_subject => { "name" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested feedback_subject" do
      feedback_subject = FeedbackSubject.create! valid_attributes
      expect {
        delete :destroy, {:id => feedback_subject.to_param}, valid_session
      }.to change(FeedbackSubject, :count).by(-1)
    end

    it "redirects to the feedback_subjects list" do
      feedback_subject = FeedbackSubject.create! valid_attributes
      delete :destroy, {:id => feedback_subject.to_param}, valid_session
      response.should redirect_to(feedback_subjects_url)
    end
  end

end

require "spec_helper"

describe FeedbackSubjectsController do
  describe "routing" do

    it "routes to #index" do
      get("/feedback_subjects").should route_to("feedback_subjects#index")
    end

    it "routes to #new" do
      get("/feedback_subjects/new").should route_to("feedback_subjects#new")
    end

    it "routes to #show" do
      get("/feedback_subjects/1").should route_to("feedback_subjects#show", :id => "1")
    end

    it "routes to #edit" do
      get("/feedback_subjects/1/edit").should route_to("feedback_subjects#edit", :id => "1")
    end

    it "routes to #create" do
      post("/feedback_subjects").should route_to("feedback_subjects#create")
    end

    it "routes to #update" do
      put("/feedback_subjects/1").should route_to("feedback_subjects#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/feedback_subjects/1").should route_to("feedback_subjects#destroy", :id => "1")
    end

  end
end

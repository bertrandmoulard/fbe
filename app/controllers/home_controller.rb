class HomeController < ApplicationController
  def index
    redirect_to feedback_subjects_path
  end
end

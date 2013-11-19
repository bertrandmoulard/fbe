class FeedbackSubjectsController < ApplicationController

  respond_to :html

  def index
    @feedback_subjects = FeedbackSubject.order(:name)
  end

  def new
    @feedback_subject = FeedbackSubject.new
  end

  def create
    feedback_subject = FeedbackSubject.new(resource_params)
    feedback_subject.save!
    redirect_to feedback_subjects_path
  end

  def show
    @feedback_subject = FeedbackSubject.find(params[:id])
    @qr = RQRCode::QRCode.new(new_feedback_subject_feedback_url(@feedback_subject), size: 6)
  end

  def edit
    @feedback_subject = FeedbackSubject.find(params[:id])
  end

  def update
    feedback_subject = FeedbackSubject.find(params[:id])
    feedback_subject.update_attributes!(resource_params)
    flash[:message] = "Saved successfully"
    redirect_to feedback_subjects_path

  end

  def destroy
    @feedback_subject = FeedbackSubject.find(params[:id]).destroy
    redirect_to feedback_subjects_path
  end

  def resource_params
    params.require(:feedback_subject).permit(:name, :yes_no_question)
  end

end

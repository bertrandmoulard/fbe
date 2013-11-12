class FeedbackSubjectsController < ApplicationController

  respond_to :html

  def new
    @feedback_subject = FeedbackSubject.new
  end

  def create
    feedback_subject = FeedbackSubject.new(resource_params)
    feedback_subject.save!
    redirect_to feedback_subject
  end

  def show
    @feedback_subject = FeedbackSubject.find(params[:id])
    @qr = RQRCode::QRCode.new(feedback_subject_path(@feedback_subject))
  end

  def edit
    @feedback_subject = FeedbackSubject.find(params[:id])
  end

  def update
    feedback_subject = FeedbackSubject.find(params[:id])
    feedback_subject.update_attributes!(resource_params)
    redirect_to feedback_subject

  end

  def resource_params
    params.require(:feedback_subject).permit(:name)
  end
end

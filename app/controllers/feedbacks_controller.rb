class FeedbacksController < ApplicationController
  before_action :set_feedback, only: [:show, :edit, :update, :destroy]

  layout "mobile"

  def new
    @feedback = Feedback.new(feedback_subject: FeedbackSubject.find(params[:feedback_subject_id]))
    render :new
  end

  def create
    @feedback = Feedback.new(feedback_params)
    @feedback.feedback_subject = feedback_subject
    if @feedback.save
      redirect_to thank_you_feedback_subject_feedback_path(@feedback.feedback_subject, @feedback)
    else
      render action: 'new', layout: :mobile
    end
  end

  def thank_you
    render :thank_you, layout: false
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_feedback
      @feedback = Feedback.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def feedback_params
      params.require(:feedback).permit(:yes, :message)
    end

    def feedback_subject
      FeedbackSubject.find(params[:feedback_subject_id])
    end
end

class UserSurveysController < ApplicationController
   def index
    @user_survey = UserSurvey.new
  end

  def new
    @user_survey = UserSurvey.new
  end

  def create
    @user_survey = UserSurvey.new(user_survey_params)
    if @user_survey.save
      redirect_to root_path, notice: 'Preferences saved!'
    else
      render :new
    end
  end

  private

  def user_survey_params
    params.require(:user_survey).permit(:financial_goals, :current_knowledge, :areas_of_interest, :learning_format)
  end
end

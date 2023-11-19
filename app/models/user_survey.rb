class UserSurvey < ApplicationRecord
  # app/models/user_survey.rb
  validates :financial_goals, :current_knowledge, :areas_of_interest, :learning_format, presence: true
end

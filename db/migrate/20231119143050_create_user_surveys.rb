class CreateUserSurveys < ActiveRecord::Migration[7.0]
  def change
    create_table :user_surveys do |t|
      t.string :financial_goals
      t.string :current_knowledge
      t.string :areas_of_interest
      t.string :learning_format

      t.timestamps
    end
  end
end

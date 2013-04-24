class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.text :details
      t.references :question, :user
      
      t.timestamps
    end
  end
end

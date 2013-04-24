class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.text :details
      t.string :title
      t.references :user
      
      t.timestamps
    end
  end
end

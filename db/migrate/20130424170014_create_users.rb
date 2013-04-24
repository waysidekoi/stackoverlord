class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email, :null => false
      t.string :alias, :null => false
      t.integer :reputation, :default => 0

      t.timestamps
    end
  end
end

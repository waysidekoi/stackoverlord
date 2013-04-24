class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.integer :status, :default => 0
      t.references :user
      t.references :votable, :polymorphic => true
      t.timestamps
    end
  end
end

class CreateTweets < ActiveRecord::Migration
  def change
    create_table :tweets do |t|
      t.string :uid
      t.integer :score

      t.timestamps
    end
  end
end

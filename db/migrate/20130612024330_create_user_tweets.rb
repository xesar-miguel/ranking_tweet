class CreateUserTweets < ActiveRecord::Migration
  def change
    create_table :user_tweets do |t|
      t.boolean :like

      t.timestamps
    end

    change_column_default :user_tweets , :like , false

  end
end

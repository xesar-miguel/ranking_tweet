class CreateUsers < ActiveRecord::Migration
  def change
    add_column :users, 'nickname','string'
    add_column :users, 'picture' ,'string'
  end

  def top
    remove_column  :users, 'nickname'
    remove_column  :users, 'picture'
  end
end


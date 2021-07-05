class AddIsFriendToScore < ActiveRecord::Migration[6.0]
  def change
    add_column :scores, :isFriend, :boolean
  end
end

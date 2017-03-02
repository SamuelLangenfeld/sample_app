class RemoveResentAtFromUsers < ActiveRecord::Migration[5.0]
  def change
    remove_column :users, :resent_at, :datetime
  end
end

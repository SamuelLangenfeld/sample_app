class Correctresentcolumn < ActiveRecord::Migration[5.0]
  def change
  	remove_column :users, :resent_sent_at, :datetime
  	add_column :users, :reset_sent_at, :datetime
  end
end

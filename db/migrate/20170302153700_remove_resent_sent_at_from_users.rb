class RemoveResentSentAtFromUsers < ActiveRecord::Migration[5.0]
  def change
    remove_column :users, :resent_sent_at, :string
  end
end

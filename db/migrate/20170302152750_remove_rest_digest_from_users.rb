class RemoveRestDigestFromUsers < ActiveRecord::Migration[5.0]
  def change
    remove_column :users, :rest_digest, :string
  end
end

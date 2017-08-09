class PwTable < ActiveRecord::Migration
  def change
    create_table :hashed_passwords do |t|
      t.string :hash_value, null: false, unique: true, index: true
      # t.timestamps null: false
    end
  end
end

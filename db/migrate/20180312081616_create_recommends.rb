class CreateRecommends < ActiveRecord::Migration[5.1]
  def change
    create_table :recommends do |t|
      t.string :email
      t.integer :pid

      t.timestamps
    end
  end
end

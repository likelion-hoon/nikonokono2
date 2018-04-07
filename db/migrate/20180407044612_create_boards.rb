class CreateBoards < ActiveRecord::Migration[5.1]
  def change
    create_table :boards do |t|
      t.string :title
      t.text :content

      t.references :bulletin, foreign_key: true
      t.timestamps
    end
  end
end

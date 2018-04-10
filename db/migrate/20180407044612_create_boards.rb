class CreateBoards < ActiveRecord::Migration[5.1]
  def change
    create_table :boards do |t|
      t.string :title
      t.text :content

      t.references :bulletin, foreign_key: true # bulletin 외래키 자리
      t.references :user, index: true, foreign_key: true  # user 외래키 자리
      t.timestamps
    end
  end
end

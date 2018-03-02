class CreateReplies < ActiveRecord::Migration[5.1]
  def change
    create_table :replies do |t|

      t.string :email
      t.text :content
      t.integer :post_id  # 외래키

      t.references :post, index: true, foreign_key: true # user 외래키 자리
      t.timestamps
    end
  end
end

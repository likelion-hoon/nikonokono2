class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|

      t.string :title   # 글 제목
      t.text :content # 글 내용
      t.string :singer   # 가수 이름
      t.string :song     # 노래 제목
      t.integer :hit, default: 0     # 조회 수
      t.integer :recom, default: 0   # 추천 수

      t.references :user, index: true, foreign_key: true # user 외래키 자리
      t.timestamps
    end
  end
end

class Post < ApplicationRecord
  # 모델간의 관계 설정
  belongs_to :user
  has_many :replies

  # 입력값 (유효성 검사)
  validates :title,:content,:singer,:song, presence: true
end

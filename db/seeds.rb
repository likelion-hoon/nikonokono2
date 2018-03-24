# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   Character.create(name: 'Luke', movie: movies.first)

user1 = User.new(
  :email => 'monki0120@naver.com',
  :nickname => '공릉동꿀주먹'
  :description => '안녕하세요~ 반갑습니다.'
  :password => '123456',
  :password_confirmation => '123456'
)
user1.save!

user2 = User.new(
  :email => 'chanjo@gmail.com',
  :nickname => '폴리텍'
  :description => '안녕~ 하이.'
  :password => '123456',
  :password_confirmation => '123456'
)
user2.save!

user3 = User.new(
  :email => '1004dkstjfls@naver.com',
  :nickname => '수내꿀주먹이얌'
  :description => '반가워요~ 디자인과입니다.'
  :password => '123456',
  :password_confirmation => '123456'
)
user3.save!

user4 = User.new(
  :email => 'wjsrlaos91@naver.com',
  :nickname => '한전맨'
  :description => '내가 게임 1짱이다'
  :password => '123456',
  :password_confirmation => '123456'
)
user4.save!

Post.create(title:'종훈', content:'노래', singer:'윤종신', song:'좋니', recom:0, user_id:1)
Post.create(title:'안서린', content:'수내 노래짱', singer:'린', song:'사랑했자나', recom:0, user_id:1)
Post.create(title:'박찬조', content:'오키도키', singer:'나얼', song:'바람기억', recom:0, user_id:1)
Post.create(title:'아아아아', content:'헤헤헤헤', singer:'박효신', song:'눈의꽃', recom:0, user_id:2)
Post.create(title:'어어어어', content:'허허허허', singer:'임창정', song:'소주한잔', recom:0, user_id:2)
Post.create(title:'우우우우', content:'후후후후', singer:'멜로망스', song:'선물', recom:0, user_id:2)
Post.create(title:'이이이이', content:'이이이이', singer:'거미', song:'기억상실', recom:0, user_id:3)
Post.create(title:'유유유유', content:'휴휴휴휴', singer:'환희', song:'가슴아파도', recom:0, user_id:3)
Post.create(title:'오오오오', content:'호호호호', singer:'쌈디', song:'짠해', recom:0, user_id:3)
Post.create(title:'adf;laksjdf;lkajsd;lfkjsa;dlkjf;aslkdjf;alskdfj;alksdfj', content:'호호호호', singer:'쌈디', song:'짠해', recom:0, user_id:4)

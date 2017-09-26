# README

 ## rooms table

  |Column|Type|Options|
  |------|------|------|
  |type|string|------|
  |price|integer|------|
  |description|text|------|
  |rate|integer|------|
  |hm_rooms|integer|------|
  |hm_bets|integer|------|
  |hm_bathrooms|integer|------|
  |amenity|string|------|
  |facility|string|------|
  |rules|string|------|
  |host_id|integer|null: false, foreign_key: true|
  |user_id|integer|null: false, foreign_key: true|

### Association

 - belongs_to :host
 - has_many :users, through: :users_rooms
 - has_many :users_rooms

 ## experiences table

  |Column|Type|Options|
  |------|------|------|
  |type|string|------|
  |category|string|------|
  |rate|integer|------|
  |host_id|integer|null: false, foreign_key: true|
  |user_id|integer|null: false, foreign_key: true|

### Association

 - belongs_to :host
 - has_many :users, through: :users_experiences
 - has_many :users_experiences

 ## restaurants table

  |Column|Type|Options|
  |------|------|------|
  |type_of_meal|string|------|
  |cuisine|string|------|
  |time_of_day|string|------|
  |rate|integer|------|
  |host_id|integer|null: false, foreign_key: true|
  |user_id|integer|null: false, foreign_key: true|

### Association

 - belongs_to :host
 - has_many :users, through: :users_restaurants
 - has_many :users_restaurants

 ## users table

  |Column|Types|Option|
  |------|------|------|
  |last_name|string|null: false, index :true|
  |first_name|string|null: false, index :true|
  |gender|string|null: false, index :true, unique: true|
  |birth_month|integer|null: false, index :true, unique: true|
  |birth_day|integer|null: false, index :true, unique: true|
  |birth_year|integer|null: false, index :true, unique: true|
  |email|string|null: false, unique: true|
  |tel|integer|null: false, unique: true|
  |currency|string|null: false, unique: true|
  |city_country|string|null: false, unique: true|
  |description|text|------|


### Association

 - has_many :rooms, through: :users_rooms
 - has_many :users_rooms
 - has_many :experiences, through: :users_experiences
 - has_many :users_experiences
 - has_many :restaurants, through: :users_restaurants
 - has_many :users_restaurants

 ## hosts table

  |Column|Types|Option|
  |------|------|------|
  |last_name|string|null: false, index :true|
  |first_name|string|null: false, index :true|
  |gender|string|null: false, index :true, unique: true|
  |birth_month|integer|null: false, index :true, unique: true|
  |birth_day|integer|null: false, index :true, unique: true|
  |birth_year|integer|null: false, index :true, unique: true|
  |email|string|null: false, unique: true|
  |tel|integer|null: false, unique: true|
  |currency|string|null: false, unique: true|
  |city_country|string|null: false, unique: true|
  |description|text|------|

  ### Association

 - has_many :rooms
 - has_many :experiences
 - has_many :restaurants

 ## users_rooms table (intermidiate)

 |Column|Type|Option|
 |------|------|------|
 |user_id|references|null: false, foreign_key: true|
 |room_id|references|null: false, foreign_key: true|

### Association
 - belongs_to :user
 - belongs_to :room

 ## users_experiences table (intermidiate)

 |Column|Type|Option|
 |------|------|------|
 |user_id|references|null: false, foreign_key: true|
 |experience_id|references|null: false, foreign_key: true|

### Association
 - belongs_to :user
 - belongs_to :experience

 ## users_restaurants table (intermidiate)

 |Column|Type|Option|
 |------|------|------|
 |user_id|references|null: false, foreign_key: true|
 |restaurant_id|references|null: false, foreign_key: true|

### Association
 - belongs_to :user
 - belongs_to :restaurant

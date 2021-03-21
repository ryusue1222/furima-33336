# usersテーブル

| Column             | Type   | Options      |
| ------------------ | ------ | ------------ |
| text               | string | null: false  |
| email              | string | unique: true |
| encrypted_password | string | null: false  |
| last_name          | string | null: false  |
| first_name         | string | null: false  |
| last_name_kana     | string | null: false  |
| first_name_kana    | string | null: false  |
| date               | ------ | null: false  |

# アソシエーション
has_many: item_user
has_one: user_address
has_many: item, through: :item_user

# itemsテーブル

| Column                     | Type           | Options      |
| -------------------------- | -------------- | ------------ |
| items_name                 | string         | null: false  |
| items_text                 | text           | null: false  |
| items_category             | references     | null: false  |
| items_status               | string         | null: false  |
| item_shipping_id           | integer        | null: false  |
| item_prefecture_id         | integer        | null: false  |
| item_scheduled_delivery_id | integer        | null: false  |
| item_price_id              | integer        | null: false  |
| price_content_id           | integer        | null: false  |

# アソシエーション
has_many: item_user
has_many: user, through: :item_user

# item_userテーブル

| Column       | Type       | Options                        |
| ------------ | ---------- | ------------------------------ |
| user         | references | null: false, foreign_key: true |
| item         | references | null: false, foreign_key: true |
| user_address | references | null: false, foreign_key: true |

# アソシエーション
belongs_to: user
belongs_to: item

# user_addressesテーブル

| Column        | Type       | Options      |
| ------------- | ---------- | ------------ |
| postal_code   | string     | null: false  |
| prefecture_id | integer    | null: false  |
| city          | string     | null: false  |
| address       | string     | null: false  |
| building      | string     |              |
| phone_number  | string     | null: false  |

# アソシエーション
belongs_to: user
belongs_to: item
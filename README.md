# usersテーブル

| Column             | Type   | Options                   |
| ------------------ | ------ | ------------------------- |
| nickname           | string | null: false               |
| email              | string | null: false, unique: true |
| encrypted_password | string | null: false               |
| last_name          | string | null: false               |
| first_name         | string | null: false               |
| last_name_kana     | string | null: false               |
| first_name_kana    | string | null: false               |
| birthday           | date   | null: false               |

# アソシエーション
has_many: item_users
has_many: items, through: :item_user

# itemsテーブル

| Column                     | Type           | Options                        |
| -------------------------- | -------------- | ------------------------------ |
| name                       | string         | null: false                    |
| text                       | text           | null: false                    |
| category_id                | integer        | null: false                    |
| status_id                  | integer        | null: false                    |
| shipping_id                | integer        | null: false                    |
| prefecture_id              | integer        | null: false                    |
| scheduled_delivery_id      | integer        | null: false                    |
| price_id                   | integer        | null: false                    |
| user                       | references     | null: false, foreign_key: true |

# アソシエーション
has_one: item_user
belongs_to: user

# item_usersテーブル

| Column       | Type       | Options                        |
| ------------ | ---------- | ------------------------------ |
| user         | references | null: false, foreign_key: true |
| item         | references | null: false, foreign_key: true |

# アソシエーション
belongs_to: user
belongs_to: item
has_one: user_address

# user_addressesテーブル

| Column        | Type       | Options                         |
| ------------- | ---------- | ------------------------------- |
| postal_code   | string     | null: false                     |
| prefecture_id | integer    | null: false                     |
| city          | string     | null: false                     |
| address       | string     | null: false                     |
| building      | string     |                                 |
| phone_number  | string     | null: false                     |
| item_user     | references | null: false, foreign_key: true  |

# アソシエーションra
belongs_to: item_userstrin
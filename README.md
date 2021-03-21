# usersテーブル

| Column     | Type   | Options      |
| ---------- | -----  | ------------ |
| text       | string | null: false  |
| email      | string | null: false  |
| password   | string | null: false  |
| last_name  | string | null: false  |
| first_name | string | null: false  |
| birth_date | ------ | ------------ |

# itemsテーブル

| Column         | Type           | Options      |
| -------------- | -------------- | ------------ |
| items_name     | string         | null: false  |
| items_text     | text           | null: false  |
| items_category | references     | null: false  |
| items_status   | string         | null: false  |
| items_image    | Active Storage | null: false  |

# item_userテーブル

| Column                  | Type        | Options      |
| ----------------------- | ----------- | ------------ |
| item_shipping           | Active Hash | null: false  |
| item_prefecture         | Active Hash | null: false  |
| item_scheduled_delivery | Active Hash | null: false  |
| item_price              | Active Hash | null: false  |
| price_content           | Active Hash | null: false  |

# user_addressesテーブル

| Column       | Type       | Options      |
| ------------ | ---------- | ------------ |
| postal_code  | string     | null: false  |
| prefecture   | string     | null: false  |
| city         | string     | null: false  |
| address      | string     | null: false  |
| building     | string     | null: false  |
| phone_number | string     | null: false  |

# ordersテーブル

| Column         | Type       | Options      |
| -------------- | ---------- | ------------ |
| card_number    | string     | null: false  |
| card_exp_month | string     | null: false  |
| card_exp_year  | string     | null: false  |
| card_cvc       | string     | null: false  |
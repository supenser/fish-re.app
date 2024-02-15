# README

<!-- usersテーブル -->
| Column             | Type   | Options                   |
|                    |        |                           |
| name               | string | null: false               |
| email              | string | null: false ,unique: true |
| encrypted_password | string | null: false               |

### Association
has_many :items
has_many :reservations

<!-- adminsテーブル -->
| Column             | Type   | Options                   |
|                    |        |                           |
| name               | string | null: false               |
| email              | string | null: false ,unique: true |
| encrypted_password | string | null: false               |

### Association
has_many :items
has_many :reservations

<!-- itemsテーブル -->
| Column            | Type       | Options                       |
|                   |            |                               |
| title             | string     | null: false                   |
| title_text        | text       | null: false                   |
| fish_fresh_id     | integer    | null: false                   |
| fish_recipe_id    | integer    | null: false                   |
| price             | integer    | null: false                   |
| admin             | references | null: false,foreign_key: true |

### Association
belongs_to :admin
has_many :reservations
has_many :users

<!-- reservationsテーブル -->
| Column            | Type       | Options                       |
|                   |            |                               |
| reserve_id        | string     | null: false                   |
| fish_recipe_id    | integer    | null: false                   |
| telephone         | string     | null: false                   |
| item              | references | null: false,foreign_key: true |
| user              | references | null: false,foreign_key: true |

### Association
has_many   :items
belongs_to :user


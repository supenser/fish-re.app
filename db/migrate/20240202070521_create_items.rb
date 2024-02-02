class CreateItems < ActiveRecord::Migration[7.0]
  def change
    create_table :items do |t|
      t.string       :title             , null: false
      t.text         :title_text        , null: false
      t.integer      :fish_fresh_id     , null: false
      t.integer      :fish_recipe_id    , null: false
      t.integer      :price             , null: false
      t.timestamps
    end
  end
end

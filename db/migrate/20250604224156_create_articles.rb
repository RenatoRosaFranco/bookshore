# frozen_string_literal: true

class CreateArticles < ActiveRecord::Migration[8.0]
  def change
    create_table :articles do |t|
      t.string :cover
      t.string :title
      t.text :content
      t.string :tags
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end

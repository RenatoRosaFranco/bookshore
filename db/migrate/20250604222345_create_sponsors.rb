# frozen_string_literal: true

class CreateSponsors < ActiveRecord::Migration[8.0]
  def change
    create_table :sponsors do |t|
      t.string :name
      t.string :logo
      t.integer :kind
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end

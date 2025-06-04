# frozen_string_literal: true

class CreateExhibitors < ActiveRecord::Migration[8.0]
  def change
    create_table :exhibitors do |t|
      t.string :name
      t.string :logo
      t.integer :booth_number
      t.integer :shed
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end

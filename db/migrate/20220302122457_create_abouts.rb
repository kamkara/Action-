class CreateAbouts < ActiveRecord::Migration[7.0]
  def change
    create_table :abouts, id: :uuid do |t|
      t.string :title
      t.string :img_main
      t.text :content
      t.string :country
      t.string :donator
      t.string :projets
      t.references :user, null: false, foreign_key: true, type: :uuid

      t.timestamps
    end
  end
end

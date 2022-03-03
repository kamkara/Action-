class CreateAbouts < ActiveRecord::Migration[7.0]
  def change
    create_table :abouts, id: :uuid do |t|
      t.string :title
      t.string :heroImg
      t.integer :country
      t.integer :donator
      t.integer :projets
      t.boolean :published
      t.references :user, null: false, foreign_key: true, type: :uuid

      t.timestamps
    end
  end
end

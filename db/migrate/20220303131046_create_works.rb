class CreateWorks < ActiveRecord::Migration[7.0]
  def change
    create_table :works, id: :uuid do |t|
      t.string :title
      t.string :heroImg
      t.string :slug
      t.references :user, null: false, foreign_key: true, type: :uuid

      t.timestamps
    end
  end
end

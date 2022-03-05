class CreateNewletters < ActiveRecord::Migration[7.0]
  def change
    create_table :newletters, id: :uuid do |t|
      t.string :first_name
      t.string :last_name
      t.string :email

      t.timestamps
    end
  end
end

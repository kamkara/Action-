class AddSlugToAbout < ActiveRecord::Migration[7.0]
  def change
    add_column :abouts, :slug, :string
  end
end

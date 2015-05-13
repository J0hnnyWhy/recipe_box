class CreateTables < ActiveRecord::Migration
  def change
    create_table(:recipes) do |t|
      t.column(:title, :string)
      t.column(:rating, :string)
      t.timestamps()
    end
    create_table(:ingredients) do |t|
      t.column(:name, :string)
      t.column(:recipe_id, :integer)
      t.timestamps()
    end
    create_table(:instructions) do |t|
      t.column(:text, :string)
      t.column(:recipe_id, :integer)
      t.timestamps()
    end
  end
end

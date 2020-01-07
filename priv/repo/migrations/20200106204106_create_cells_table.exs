defmodule MapaCelulas.Repo.Migrations.CreateCellsTable do
  use Ecto.Migration

  def up do
    create table(:cells) do
      add :uuid, :uuid
        
      add :title, :string
        
      add :lat, :float
      add :lng, :float
        
      add :day_of_week, :integer
      add :start_time, :string

      # Address Stuff
      add :address_line, :string
      add :address_line2, :string
      add :address_number, :integer
      add :address_district, :string
      add :address_state, :string
      add :address_country, :string
      add :address_city, :string

      timestamps()
    end
  end

  def down do
    drop table("cells")
  end
end

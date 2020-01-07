defmodule MapaCelulasWeb.Cells.Cell do
    use Ecto.Schema
    import Ecto.Changeset
    alias MapaCelulasWeb.Cells.Cell

    schema "cells" do
        field :uuid, Ecto.UUID
        
        field :title, :string
        
        field :lat, :float
        field :lng, :float
        
        field :day_of_week, :integer
        field :start_time, :string

        # Address Stuff
        field :address_line, :string
        field :address_line2, :string
        field :address_number, :integer
        field :address_district, :string
        field :address_state, :string
        field :address_country, :string
        field :address_city, :string

        timestamps()
    end

    @doc false
    def changeset(%Cell{} = cell, attrs) do
        cell
        |> cast(attrs, [:uuid])
        |> validate_required([:uuid])
    end
end
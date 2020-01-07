defmodule MapaCelulasWeb.CellsController do
    use MapaCelulasWeb, :controller
    alias MapaCelulasWeb.Cells.Cell
    alias MapaCelulas.Repo

    def list_all(conn, _params) do
        cells = Repo.all(Cell)
        IO.puts(cells)
        json(conn, %{cells: cells})
    end
end

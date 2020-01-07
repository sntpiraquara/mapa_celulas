defmodule MapaCelulas.Repo do
  use Ecto.Repo,
    otp_app: :mapa_celulas,
    adapter: Ecto.Adapters.Postgres
end

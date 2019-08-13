defmodule Balloondashboard.Repo do
  use Ecto.Repo,
    otp_app: :balloondashboard,
    adapter: Ecto.Adapters.Postgres
end

defmodule LiveComponents.Repo do
  use Ecto.Repo,
    otp_app: :live_components,
    adapter: Ecto.Adapters.Postgres
end

defmodule LearningPlatform.Repo do
  use Ecto.Repo,
    otp_app: :learning_platform,
    adapter: Ecto.Adapters.Postgres
end

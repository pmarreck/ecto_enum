defmodule Ecto.Integration.Migration do
  use Ecto.Migration

  def change do
    create table(:users) do
      add(:status, :integer)
    end

    create table(:accounts) do
      add(:status, :string)
    end

    execute("CREATE TYPE status AS ENUM ('registered', 'active', 'inactive', 'archived')")

    create table(:users_pg) do
      add(:status, :status)
    end
  end
end

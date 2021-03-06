defmodule Project.Organization.Area do
  use Ecto.Schema
  import Ecto.Changeset

  schema "areas" do
    field :name, :string
    has_many :task, Project.Organization.Task

    timestamps()
  end

  @doc false
  def changeset(area, attrs) do
    area
    |> cast(attrs, [:name])
    |> validate_required([:name])
  end
end

class JobsIndex < Chewy::Index
  define_type Job.includes(:company) do
    field :name
    field :description
    field :company do
      field :name
      field :address
      field :email
    end
    field :salary, type: "integer"
  end
end

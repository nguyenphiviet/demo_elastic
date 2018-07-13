class CompaniesIndex < Chewy::Index
  define_type Company.includes(:jobs) do
    field :name
    field :address
    field :email
    field :jobs do
      field :name
      field :description
      field :salary
    end
  end
end

ActiveRecord::Schema.define(version: 20180712035357) do

  create_table "companies", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name"
    t.text "address"
    t.string "email"
    t.index ["email"], name: "index_companies_on_email", unique: true
  end

  create_table "jobs", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name"
    t.text "description"
    t.bigint "company_id"
    t.integer "salary", default: 0, null: false
    t.index ["company_id"], name: "index_jobs_on_company_id"
  end

  add_foreign_key "jobs", "companies"
end

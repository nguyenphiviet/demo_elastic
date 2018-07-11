class CompaniesController < ApplicationController
  def index
    @companies = load_companies search_params
  end

  private

  def search_params
    params.permit :search
  end

  def load_companies params
    result = params[:search].present? ? Company.by_name(params[:search]) : Company.all
    result = result.select(:id, :name, :address)
      .page(params[:page]).per(Settings.per_page)
  end
end

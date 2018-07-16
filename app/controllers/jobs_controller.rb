class JobsController < ApplicationController
  def index
    @jobs = load_jobs search_params
  end

  private
  def search_params
    params.permit :search, :page
  end

  def load_jobs params
    scope = params[:search].present? ? Job.search_elastic(params[:search]) : Job.get_all
    scope.page(params[:page]).per(Settings.per_page)
  end
end

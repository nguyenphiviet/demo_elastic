class JobsController < ApplicationController
  def index
    @jobs = load_jobs search_params
  end

  private

  def search_params
    params.permit :search
  end

  def load_jobs params
    result = params[:search].present? ? Job.by_name(params[:search]) : Job.all
    result = result.select(:id, :name, :description)
      .page(params[:page]).per(Settings.per_page)
  end
end

module ApplicationHelper
  def index_for counter, page, per_page
    (page - 1) * per_page + counter + 1
  end
end

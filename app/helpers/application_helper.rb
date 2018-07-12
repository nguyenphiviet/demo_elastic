module ApplicationHelper
  def index_for counter, page, per_page
    (page - 1) * per_page + counter + 1
  end

  def format_currency number
    number_to_currency number,
      precision: 0, unit: Settings.currency_unit,
      separator: ",", delimiter: ".", format: "%n %u"
  end
end

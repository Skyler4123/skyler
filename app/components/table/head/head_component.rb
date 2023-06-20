# frozen_string_literal: true

class Table::Head::HeadComponent < ViewComponent::Base
  def initialize(headers:, edit: false, checkbox: false)
    @headers = headers
    @edit = edit
    @checkbox = checkbox
  end
end

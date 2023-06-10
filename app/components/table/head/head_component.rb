# frozen_string_literal: true

class Table::Head::HeadComponent < ViewComponent::Base
  def initialize(headers:, edit: false)
    @headers = headers
    @edit = edit
  end
end

# frozen_string_literal: true

class Table::TableComponent < ViewComponent::Base
  def initialize(collection:, headers:, edit: false)
    @collection = collection
    @headers = headers
    @edit = edit
  end
end

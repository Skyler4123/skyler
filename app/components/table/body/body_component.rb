# frozen_string_literal: true

class Table::Body::BodyComponent < ViewComponent::Base
  def initialize(collection:, headers:, edit: false, checkbox: false)
    @collection = collection
    @headers = headers
    @edit = edit
    @checkbox = checkbox
    @klass = collection.first.class
  end
end

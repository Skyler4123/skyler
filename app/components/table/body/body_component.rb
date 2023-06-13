# frozen_string_literal: true

class Table::Body::BodyComponent < ViewComponent::Base
  def initialize(collection:, headers:, edit: false, klass: nil)
    @collection = collection
    @headers = headers
    @edit = edit
    @klass = klass
  end
end

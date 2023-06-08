# frozen_string_literal: true

class Table::DefaultComponent < ViewComponent::Base
  def initialize(record:)
    @record = record
  end

end

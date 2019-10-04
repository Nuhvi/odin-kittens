# frozen_string_literal: true

class Kitten < ApplicationRecord
  default_scope { order(created_at: :desc) }
end

class Discount < ApplicationRecord
  include Fae::BaseModelConcern

  validates :title, presence: true
  validates :value, presence: true

  def fae_display_field
    title
  end

end

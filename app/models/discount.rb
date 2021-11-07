class Discount < ApplicationRecord
  include Fae::BaseModelConcern

  validates :title, presence: true, presence: true
  validates :value, presence: true, presence: true

  def fae_display_field
    title
  end

end

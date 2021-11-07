class Sell < ApplicationRecord
  include Fae::BaseModelConcern

  belongs_to :discount
  belongs_to :client

  has_many :sell_products
  has_many :products, through: :sell_products

  has_many :sell_services
  has_many :services, through: :sell_services
  

  enum status: { finised: 0, canceled: 1}

  validates :client, presence: true

  def fae_display_field
    id
  end

  def self.for_fae_index
    order(:id)
  end

end

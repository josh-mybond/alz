class Index < ApplicationRecord
  extend FriendlyId
  friendly_id :generated_slug, use: :slugged
  def generated_slug
    require 'securerandom'
    @random_slug ||= persisted? ? friendly_id : SecureRandom.hex(15)
  end
  has_one_attached :main_image
end

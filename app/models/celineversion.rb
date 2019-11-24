class Celineversion < ApplicationRecord
  include PgSearch::Model
  include AlgoliaSearch

  belongs_to :user
  has_many :bookings, dependent: :destroy

  # add the AlgoliaSearch method
  algoliasearch do
    attributes :name, :description
  end

  # add the pg_search for the advanced search bar
  pg_search_scope :search_by_name_and_description,
  against: [ :name, :description ],
  using: {
    tsearch: { prefix: true }
  }

end

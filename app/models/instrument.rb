class Instrument < ApplicationRecord
  has_many :instrument_joins
  has_many :users, through: :instrument_joins
end

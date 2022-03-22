class Song < ApplicationRecord
    has_many :performers, dependent: :destroy
end

class Key < ApplicationRecord
	belongs_to :gates
	 validates :codigo, presence: true,
                    length: { minimum: 1 }
end

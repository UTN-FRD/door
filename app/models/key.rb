class Key < ApplicationRecord
	 validates :codigo, presence: true,
                    length: { minimum: 1 }
end

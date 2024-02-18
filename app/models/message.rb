class Message < ApplicationRecord
    attribute :content, :string
    validates :content, presence: true
end

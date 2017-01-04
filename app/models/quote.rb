class Quote < ApplicationRecord
  validates :saying, presence: true, length: { maximum: 140, minimum: 3 }
  validates :author, presence: true, length: { maximum: 50, minimum: 3 },
            format: { with: /Terry Pratchett \(.+\)/, message "must be in the form: Terry Pratchett (Reference)" }
end

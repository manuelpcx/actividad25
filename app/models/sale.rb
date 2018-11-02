class Sale < ApplicationRecord
  validates :cod, uniqueness: true
  validates :detail, presence: true
  validates :category, inclusion: %w(uno dos tres cuatro cinco)
  validates :value, numericality: true
  validates :discount, :format { :with /0-40/, :message "Solo numeros enteros y menor o igual a 40" }
end

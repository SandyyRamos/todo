class Task < ApplicationRecord
  belongs_to :user
  enum status: {
    pendiente: 0,
    completado: 1,
    cancelado: 2
  }
end

class AeventoDispositivo < ApplicationRecord
  belongs_to :adispositivo
  belongs_to :arecurso
  belongs_to :atipo_evento
end

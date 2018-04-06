class E1eventoDispositivo < ApplicationRecord
  belongs_to :e1dispositivo
  belongs_to :e1recurso
  belongs_to :e1tipo_evento
end

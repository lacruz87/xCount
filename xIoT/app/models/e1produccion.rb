class E1produccion < ApplicationRecord
  belongs_to :e1recurso
  belongs_to :e1articulo, optional: true
end

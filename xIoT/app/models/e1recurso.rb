class E1recurso < ApplicationRecord
  belongs_to :e1centro
  belongs_to :e1ubicacion, optional: true

end

class MontagemPeca < ApplicationRecord
    belongs_to :montagem
    belongs_to :peca
end

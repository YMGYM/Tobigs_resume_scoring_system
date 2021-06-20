class Score < ApplicationRecord
    belongs_to :resume
    belongs_to :user
end

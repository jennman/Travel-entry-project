class User < ApplicationRecord
    has_many :journalentries
    has_many :states, through: :journalentries

    has_secure_password


end

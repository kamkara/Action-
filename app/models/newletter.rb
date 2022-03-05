class Newletter < ApplicationRecord

    validates :first_name, :last_name, :email, presence: true
    #validates :first_name, :last_name,
    #validates :email,  uniqueness: {message: 'Vous etes déja inscrire avec cette %{value} pour recevoir les nouvelles.'}
end

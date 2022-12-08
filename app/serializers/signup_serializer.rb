class SignupSerializer < ActiveModel::Serializer
  attributes :id, :time
  # has_one :camper
  # has_many :activities
  belongs_to :camper
  belongs_to :activity
end

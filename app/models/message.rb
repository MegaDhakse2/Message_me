class Message < ApplicationRecord
  belongs_to :user #, class_name: "user ", foreign_key: "user _id"
  validates :body,
            presence: true,
            uniqueness: {
              case_sensitive: false
            },
            length: {
              minimum: 5,
              maximum: 50
            }
  #, format: { with: ConstantData::VALID_EMAIL_REGEX }, if: :method_name?
end

class Message < ApplicationRecord
  belongs_to :user #, class_name: "user ", foreign_key: "user _id"
  validates :body, length: { minimum: 3, maximum: 50 }
  after_create_commit { broadcast_append_to "messages" }
  scope :custom_data, -> { order(:created_at).last(20) }
  # Ex:- scope :active, -> {where(:active => true)}
  #, format: { with: ConstantData::VALID_EMAIL_REGEX }, if: :method_name?
end

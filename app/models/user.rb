class User < ApplicationRecord
  has_many :messages #, class_name: "message" , foreign_key: "reference_id"

  PASSWORD_FORMAT =
    /\A
(?=.{8,})          # Must contain 8 or more characters
(?=.*\d)           # Must contain a digit
(?=.*[a-z])        # Must contain a lower case character
(?=.*[A-Z])        # Must contain an upper case character
(?=.*[[:^alnum:]]) # Must contain a symbol
/x

  validates :username,
            presence: true,
            uniqueness: {
              case_sensitive: true
            },
            length: {
              minimum: 5,
              maximum: 15
            }

  ##### Password Regex not working  here ######

  # validates :password_digest,
  #           presence: true,
  #           length: {
  #             minimun: 8,
  #             maximum: 15
  #           },
  #           format: {
  #             with: :PASSWORD_FORMAT
  #           }

  has_secure_password
end

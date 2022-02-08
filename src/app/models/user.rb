class User < ApplicationRecord
    def password=(password)
      if password.kind_of?(String)
        self.hashed_password = BCrypt::Password.create(password)
      else
        self.hashed_password = nil
      end
    end
  end
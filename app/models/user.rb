class User < ActiveRecord::Base

  # Create a new remember token for a user:
  def User.new_remember_token
    SecureRandom.urlsafe_base64
  end

  # Hash a token:
  def User.hash(token)
    Digest::SHA1.hexdigest(token.to_s)
  end

end
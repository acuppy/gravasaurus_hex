require 'digest/md5'

module GravasaurusHex
  class Gravatar
    AVATAR_URL = 'http://www.gravatar.com/avatar/%{hash}'

    def url email_address
      AVATAR_URL % { hash: hashed_email_address(email_address.downcase) }
    end

    private

    def hashed_email_address(email_address)
      Digest::MD5.hexdigest email_address
    end
  end
end

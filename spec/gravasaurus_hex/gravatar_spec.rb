require 'spec_helper'

module GravasaurusHex
  describe Gravatar do
    describe 'retrieving a gravatar url' do
      subject(:gravatar_url) {
        Gravatar.new.url(email)
      }

      let(:email) {
        'joe@example.com'
      }
      let(:hashed_email_url) {
        'http://www.gravatar.com/avatar/f5b8fb60c6116331da07c65b96a8a1d1'
      }

      it { is_expected.to eq hashed_email_url }
    end
  end
end

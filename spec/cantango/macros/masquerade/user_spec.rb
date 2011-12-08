require 'cantango/config'
require 'fixtures/models'

require 'spec_helper'

class User
  cantango
end

class Admin
  cantango :masquerade
end

describe CanTango::Macros::Masquerader::User do
  describe 'masquerader' do
    before do
      AdminAccount.masquerader
    end

    context 'admin masquerading as mike' do
      before do
        admin.masquerade_as mike
      end
      specify { admin.active_user.should == mike }
    end
  end
end

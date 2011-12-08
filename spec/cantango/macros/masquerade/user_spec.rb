require 'cantango/config'
require 'fixtures/models'

require 'spec_helper'

class User
  extend CanTango::Macros::Masquerader::User
end

class Admin
  extend CanTango::Macros::Masquerader::User
end

CanTango.config.users do |u|
  u.register :user, User
  u.register :admin, Admin
end

describe CanTango::Macros::Masquerader::User do
  before do
    @mike   = User.new 'mike', 'mike@mail.com'
    @admin  = Admin.new 'admin', 'admin@mail.com'
  end
  
  describe 'masquerader' do
    before do
      Admin.masquerader
    end

    context 'admin masquerading as mike' do
      before do
        @admin.masquerade_as @mike
      end
      specify { @admin.active_user.should == @mike }
    end
  end
end

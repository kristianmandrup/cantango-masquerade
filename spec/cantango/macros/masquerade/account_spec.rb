require 'cantango/config'
require 'fixtures/models'

require 'spec_helper'

class EditorAccount
  extend CanTango::Macros::Masquerader::Account
end

class AdminAccount
  extend CanTango::Macros::Masquerader::Account
end

CanTango.config.accounts do |ac|
  ac.register :editor, EditorAccount
  ac.register :admin, AdminAccount
end

describe CanTango::Macros::Masquerader::Account do
  before do
    @user = User.new 'mike', 'mike@mail.com'
    @admin_ac = AdminAccount.new @user
    @editor_ac = EditorAccount.new @user
  end
  
  describe 'masquerader' do
    before do
      AdminAccount.masquerader
    end

    context 'admin NOT masquerading' do
      specify { @admin_ac.active_account.should == nil }
      specify { @admin_ac.masquerading?.should be_false }
    end

    context 'admin masquerading as editor account' do
      before do
        @admin_ac.masquerade_as @editor_ac
      end
      specify { @admin_ac.masquerading?.should be_true }
      specify { @admin_ac.active_account.should == @editor_ac }
    end
  end
end

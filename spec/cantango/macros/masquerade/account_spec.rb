require 'cantango/config'
require 'fixtures/models'

require 'spec_helper'

class EditorAccount
  tango_account
end

class AdminAccount
  tango_account :masquerade
end

describe CanTango::Macros::Masquerader::Account do
  before do
    @admin_ac = AdminAccount.new
    @editor_ac = EditorAccount.new
  end
  
  describe 'masquerader' do
    before do
      AdminAccount.masquerader
    end

    context 'admin NOT masquerading' do
      specify { @admin_ac.active_user.should == nil }
      specify { @admin_ac.masquerading?.should be_false }
    end

    context 'admin masquerading as editor account' do
      before do
        @admin_ac.masquerade_as @editor_ac
      end
      specify { @admin_ac.masquerading?.should be_true }
      specify { @admin_ac.active_user.should == @editor_ac }
    end
  end
end

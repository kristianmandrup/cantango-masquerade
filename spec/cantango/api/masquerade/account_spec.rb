require 'cantango/config'
require 'fixtures/models'

require 'spec_helper'

class EditorAccount
  include CanTango::Api::Masquerade::Account
end

class AdminAccount
  include CanTango::Api::Masquerade::Account
end

CanTango.config.accounts do |ac|
  ac.register :editor, EditorAccount
  ac.register :admin, AdminAccount
end

describe CanTango::Api::Masquerade::Account do
  before do
    @user   = User.new 'mike'
    @editor = EditorAccount.new
    @admin  = AdminAccount.new @user
  end
  
  subject { @admin }
  
  context 'is NOT masquerading' do
    before do
      subject.stop_masquerade
    end

    specify { subject.masquerading.should be_false }

    describe 'masquerading?' do
      specify { subject.masquerading?.should be_false }
    end
  end
  
  context 'IS masquerading' do
    before do
      subject.masquerade_as @editor
    end
    
    specify { subject.masquerading.should be_true }
    
    describe 'masquerade_as account' do
      specify { subject.active_account.should == @editor }
    end

    describe 'stop_masquerade' do
      specify do
        subject.stop_masquerade
        subject.masquerading.should be_false
      end
    end

    describe 'masquerading?' do
      specify { subject.masquerading?.should be_true }
    end
  end
end
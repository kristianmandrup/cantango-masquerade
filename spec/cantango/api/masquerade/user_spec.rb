require 'cantango/config'
require 'fixtures/models'
require 'spec_helper'

class EditorUser
  include CanTango::Api::Masquerade::User
end

class AdminUser
  include CanTango::Api::Masquerade::User
end

CanTango.config.users do |u|
  u.register :editor, EditorUser
  u.register :admin, AdminUser
end

describe CanTango::Api::Masquerade::User do
  before do
    @editor = EditorUser.new
    @admin  = AdminUser.new 'admin'
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
    
    describe 'masquerade_as user' do
      specify { subject.active_user.should == @editor }
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
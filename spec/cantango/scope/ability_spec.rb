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

describe CanTango::Scope::Ability do
  before do
    @editor = EditorUser.new
    @admin  = AdminUser.new 'admin'
    @ability = CanTango::Ability::Base.new @admin
  end
  
  # subject { CanTango::Scope::Ability.new @ability, :masquerade => false }
  subject { CanTango::Scope::Ability.new @ability }
  
  context 'NOT masquerading' do
    before do
      @admin.stop_masquerade
    end
    
    describe 'masquerading?' do
      specify { subject.masquerading?.should be_false }
    end

    describe 'masquerade_user?' do
      specify { subject.masquerade_user?.should be_false }
    end

    describe 'masquerade_account?' do
      specify { subject.masquerade_account?.should be_false }
    end

    # describe 'masquerading_off?' do
    #   specify { subject.masquerade_off?.should be_true }
    # end

    describe 'subject' do
      specify { subject.send(:subject).should == @admin }
    end
  end

  context 'IS masquerading' do
    before do
      @admin.masquerade_as @editor
    end

    specify { @admin.active_user.should == @editor }

    describe 'masquerading?' do
      specify { subject.masquerading?.should be_true }
    end

    # describe 'masquerading_off?' do
    #   specify { subject.masquerade_off?.should be_true }
    # end

    describe 'masquerade_user?' do
      specify { subject.masquerade_user?.should be_true }
    end

    describe 'masquerade_account?' do
      specify { subject.masquerade_account?.should be_false }
    end

    describe 'subject' do
      specify { subject.send(:subject).should == @editor }
    end
  end
end
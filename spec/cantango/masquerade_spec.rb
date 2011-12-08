require 'spec_helper'

describe CanTango::Macros do
  describe "extract - symbol" do
    specify do 
      CanTango::Macros.extract(:masquerade).should == {:masquerade => true}
    end
    
    specify do
      opts = if :masquerade.any_kind_of?(Array, Symbol)
        CanTango::Macros.extract(:masquerade)
      end
      opts.should == {:masquerade => true}
    end
  end

  describe "extract - symbols" do
    specify do 
      CanTango::Macros.extract(:masquerade, :fast).should == {:masquerade => true, :fast => true}
    end
  end
end

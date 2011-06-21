require 'spec_helper'

describe PostcodeAnywhere do

  describe "the PostcodeAnywhere initializer" do

    it "takes an options hash as its argument" do
      lambda { PostcodeAnywhere.new({}) }.should_not raise_error ArgumentError
    end

    it "uses an empty hash as its default argument" do
      lambda { PostcodeAnywhere.new() }.should_not raise_error ArgumentError
    end

  end

  describe "the PostcodeAnywhere account_code method" do

    it "should be implemented" do
      PostcodeAnywhere.new.should respond_to(:account_code).with(0).arguments
    end

    it "should return nil by default" do
      PostcodeAnywhere.new.account_code.should be nil
    end

    it "should configure itself from the options hash" do
      acc_code = "XXXXX00000"
      PostcodeAnywhere.new(:account_code => acc_code).account_code.should eq acc_code
    end

  end

  describe "the PostcodeAnywhere license_code method" do

    it "should be implemented" do
      PostcodeAnywhere.new.should respond_to(:license_code).with(0).arguments
    end

    it "shoud return nil by default" do
      PostcodeAnywhere.new.license_code.should be nil
    end

    it "should configure itself from the options hash" do
      lic_key = "AA00-BB11-CC22-DD33"
      PostcodeAnywhere.new(:license_code => lic_key).license_code.should eq lic_key
    end

  end

end

require 'spec_helper'

describe PostcodeAnywhere do

  before :each do
    @acc_code = "XXXXX00000"
    @lic_code = "AA00-BB11-CC22-DD33"
  end

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
      PostcodeAnywhere.new(:account_code => @acc_code).account_code.should eq @acc_code
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
      @lic_code = "AA00-BB11-CC22-DD33"
      PostcodeAnywhere.new(:license_code => @lic_code).license_code.should eq @lic_code
    end

  end

  describe "the PostcodeAnywhere lookup_uri method" do

    it "should be implemented" do
      PostcodeAnywhere.new.should respond_to(:lookup_uri).with(0).arguments
    end

    it "should include the account code" do
      PostcodeAnywhere.new(:account_code => @acc_code).lookup_uri.should match /account_code=#{@acc_code}/
    end

    it "should include the license code" do
      PostcodeAnywhere.new(:license_code => @lic_code).lookup_uri.should match /license_code=#{@lic_code}/
    end

  end

  describe "the PostcodeAnywhere fetch_uri method" do

    it "should be implemented" do
      PostcodeAnywhere.new.should respond_to(:fetch_uri).with(0).arguments
    end

    it "should include the account code" do
      PostcodeAnywhere.new(:account_code => @acc_code).fetch_uri.should match /account_code=#{@acc_code}/
    end

    it "should include the license code" do
      PostcodeAnywhere.new(:license_code => @lic_code).fetch_uri.should match /license_code=#{@lic_code}/
    end

  end

end

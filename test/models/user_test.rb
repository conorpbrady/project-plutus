require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  def setup
    @user = users(:finn)
  end

  test "user is valid" do
    assert @user.valid?
  end

  test "user validation catches invalid email" do
    invalid_addresses = %w[foo.com foo@bar@baz.com foobar@baz..com]
    #not covered foo..bar@baz.com foo.@bar.com
    invalid_addresses.each do |address|
      @user.email = address
      assert_not @user.valid?, "#{address} should be invalid"
    end
  end

  test "valid emails pass validation" do
    valid_addresses = %w[bmo@email.com finn_jake@treehouse.org cheerio@google.co.uk]
    valid_addresses.each do |address|
      @user.email = address
      assert @user.valid?, "#{address} should be valid"
    end
  end

  test "email address should be unique" do
    duplicate_user = @user.dup
    duplicate_user.email = @user.email.upcase
    @user.save
    assert_not duplicate_user.valid?
  end

  test "email address should be converted to lowercase" do
    mixed_case_email = "Foo@ExaMPLe.Com"
    @user.email  = mixed_case_email
    @user.save
    assert_equal mixed_case_email.downcase, @user.reload.email
  end

end

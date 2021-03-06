require 'spec_helper'

describe User do

  before do
<<<<<<< HEAD
    @user = User.new(name: "Examplexxx", email: "user@example.com", 
                     password: "foobar", password_confirmation: "foobar")
=======
    @user = User.new(name: "Example User", email: "user@example.com",
       password: "foobar", password_confirmation: "foobar")
>>>>>>> sign-up
  end

  subject { @user }

  it { should respond_to(:name) }
  it { should respond_to(:email) }
  it { should respond_to(:password_digest) }
<<<<<<< HEAD
  it { should respond_to(:password) } 
  it { should respond_to(:password_confirmation) }
  it { should respond_to(:authenticate) }

=======
  it { should respond_to(:password) }
  it { should respond_to(:password_confirmation) }
  it { should respond_to(:authenticate) }
>>>>>>> sign-up
  it { should be_valid }

  describe "when name is not present" do
    before { @user.name = " " }
    it { should_not be_valid }
  end

  describe "when email is not present" do
    before { @user.email = " " }
    it { should_not be_valid }
  end

<<<<<<< HEAD
  describe "when name is longer than 50 characters" do
=======
  describe "when name is too long" do
>>>>>>> sign-up
    before { @user.name = "a" * 51 }
    it { should_not be_valid }
  end

<<<<<<< HEAD
  describe "when email format is invalid" do
    it "should be invalid" do
      addresses = %w[user@foo, com user_at_foo.org example.user@foo. foo@bar_baz.com foo@bar+baz.com]
      addresses.each do |invalid_address|
        @user.email = invalid_address
        @user.should_not be_valid
=======
  describe "when email format is invalid" do 
    it "should be invalid" do 
      addresses =%w[user@foo,com user_at_food.org example.user@foo.
                        foo@bar_baz.com foo@bar+baz.com]
      addresses.each do |invalid_address|
        @user.email = invalid_address
        expect(@user).not_to be_valid
>>>>>>> sign-up
      end
    end
  end

<<<<<<< HEAD
  describe "when email format is valid" do
    it "should be valid" do
      addresses = %w[user@foo.COM A_US-ER@f.b.org frst.lst@foo.jp a+b@baz.cn]
      addresses.each do |valid_address|
        @user.email = valid_address
        @user.should be_valid
      end      
    end
  end

  describe "when email address is already taken" do
=======
  describe "when email format is valid" do 
    it "should be valid" do 
      addresses = %w[user@foo.COM A_US-ER@f.b.org frst.lst@foo.jp a+b@baz.cn]
      addresses.each do |valid_address|
        @user.email = valid_address
        expect(@user).to be_valid
      end
    end
  end

   describe "when email address is already taken" do
>>>>>>> sign-up
    before do
      user_with_same_email = @user.dup
      user_with_same_email.email = @user.email.upcase
      user_with_same_email.save
    end

    it { should_not be_valid }
  end

  describe "when password is not present" do
<<<<<<< HEAD
    before { @user.password = @user.password_confirmation = " " }
    it { should_not be_valid }
  end

  describe "when password doesn't match confirmation" do
    before { @user.password_confirmation = "mismatch" }
    it { should_not be_valid }
  end


  describe "When password confirmation is nil" do
    before { @user.password_confirmation = nil }
    it { should_not be_valid }
  end

  describe "with a password that's too short" do
    before { @user.password = @user.password_confirmation = "a" * 5 }
    it { should_not be_valid }
=======
  before do
    @user = User.new(name: "Example User", email: "user@example.com",
                     password: " ", password_confirmation: " ")
  end
  it { should_not be_valid }
  end

  describe "when password doesn't match confirmation" do
  before { @user.password_confirmation = "mismatch" }
  it { should_not be_valid }
  end

   describe "with a password that's too short" do
    before { @user.password = @user.password_confirmation = "a" * 5 }
    it { should be_invalid }
>>>>>>> sign-up
  end

  describe "return value of authenticate method" do
    before { @user.save }
<<<<<<< HEAD
    let(:found_user) { User.find_by_email(@user.email) }

    describe "with valid password" do
      it { should == found_user.authenticate(@user.password) }
=======
    let(:found_user) { User.find_by(email: @user.email) }

    describe "with valid password" do
      it { should eq found_user.authenticate(@user.password) }
>>>>>>> sign-up
    end

    describe "with invalid password" do
      let(:user_for_invalid_password) { found_user.authenticate("invalid") }

<<<<<<< HEAD
      it { should_not == user_for_invalid_password }
      specify { user_for_invalid_password.should be_false }
    end
  end

end
=======
      it { should_not eq user_for_invalid_password }
      specify { expect(user_for_invalid_password).to be_false }
    end
  end
end


# require 'spec_helper'

# describe User do

#   before { @user = User.new(name: "Example User", email: "user@example.com") }

#   subject { @user }

#   it { should respond_to(:name) }
#   it { should respond_to(:email) }
# end
>>>>>>> sign-up

RSpec.describe AdvancedErrorsRails do
  it "has a version number" do
    expect(AdvancedErrorsRails::VERSION).not_to be nil
  end

  describe "when the login is blank, this should remove base attributes name" do
    let(:user) { User.new(password: "12345678") }
    it "does something useful" do
      user.valid?
      expect(user.errors.full_messages).to eq(["You really should have a login."])
    end
  end

  describe "when the password is blank, this should add base attributes name" do
    let(:user) { User.new(login: "login") }
    it "does something useful" do
      user.valid?
      expect(user.errors.full_messages).to eq(["Password can't be blank."])
    end
  end

end

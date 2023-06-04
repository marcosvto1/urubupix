RSpec.describe User, type: :model do
  context "with user" do
    let(:user) { User.new(name: "marcola")}

    it {expect(user.name).to eq("marcola")}
  end
end

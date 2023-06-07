describe Users::Create do
  let(:params) { { name: 'John Doe' } }
  let(:user) { double(User) }
  let(:user_repository) { double('UserRepository') }
  let(:create) { Users::Create.new(params: params, user: user, user_repository: user_repository) }

  describe '#call' do
    before do
      allow(user).to receive(:new).and_return(User.new(name: 'John Doe'))
    end

    it 'creates a new user with the given name' do
      expect(user).to receive(:new).with('John Doe')
      expect(user_repository).to receive(:create).with({"name" => 'John Doe'})
      create.call
    end

    it 'calls create on the user repository with the new user' do
      new_user = double('User', to_hash: { name: 'John Doe' })
      allow(user).to receive(:new).and_return(new_user)
      expect(user_repository).to receive(:create).with(new_user.to_hash)
      create.call
    end
  end
end

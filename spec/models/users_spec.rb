require 'rails_helper'

RSpec.describe User, type: :model do
  let(:user_no_name) { User.new(
    email: 'steve@email.com',
    password: '12345678'
    )}
  let(:user_no_email) { User.new(
    username: 'Steve',
    password: '12345678'
    )}
  let(:user) { User.new(
    username: 'Steve',
    email: 'steve@email.com',
    password: '12345678'
    )}

  describe 'validations' do
    context 'will raise an error' do
      it 'when the username field is empty' do
        user_no_name.save
        expect(user_no_name.errors[:username]).to include("can't be blank")
      end
      it 'when the email field is empty' do
        user_no_email.save
        expect(user_no_email.errors[:email]).to include("can't be blank")
      end
    end
    it 'saves the user when the fields are not empty' do
        expect{user.save}.to change{User.count}.by(1)
    end
  end
end

# Jordan lecagy code
# describe Article do
#   context 'validations' do
#     it { should validate_presence_of :title }
#     it { should validate_presence_of :body }
#   end
# end

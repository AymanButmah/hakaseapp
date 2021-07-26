require 'rails_helper'

RSpec.describe User, type: :model do
  before (:all) do 
    @user = User.create(email: "ali@gmail.com", password: "123456asd", password_confirmation: "123456asd")
  end
  it 'checks that a user can be created' do
    expect(@user).to be_valid
  end
  it 'checks that a user can be read' do
    expect(User.find_by(email: "ali@gmail.com")).to eq(@user)
  end
  it 'checks that a user can be updated' do
    @user.update(:email => "ayman@gmail.com")
    expect(User.find_by_email("ayman@gmail.com")).to eq(@user)
  end
  it 'checks that a user can be destroyed' do
    @user.destroy
    expect(User.find_by(email: "ayman@gmail.com")).to be_nil
  end

end

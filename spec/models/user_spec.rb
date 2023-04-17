require 'rails_helper'

RSpec.describe User do
  it 'should be valid' do
    user = User.create(name: '',
                       email: '',
                       password: '')
    expect(user).to_not be_valid
  end

  it 'should create a new user' do
    user = User.create(name: 'user 1',
                       email: 'useremail@email.com',
                       password: 'password')
    expect(user.name).to eql('user 1')
  end

  it 'should have an email' do
    user = User.create(name: 'user 1',
                       email: 'useremail@email.com',
                       password: 'password')
    expect(user.email).to eql('useremail@email.com')
  end

  it 'should have a password' do
    user = User.create(name: 'user 1',
                       email: 'useremail@email.com',
                       password: 'password')
    expect(user.password).to eql('password')
  end
end

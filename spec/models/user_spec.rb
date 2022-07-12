require 'rails_helper'

RSpec.describe User, type: :model do
  it 'is invalid without any attributes' do
    expect(User.new).to be_invalid
  end

  it 'is not valid without a name' do
    user = User.new(name: nil)
    expect(user).to be_invalid
  end

  it 'is not valid without age' do
    user = User.new(name: 'Sumar', age: nil)
    expect(user).to be_invalid
  end

  it 'is not valid if age is under 13' do
    user = User.new(name: 'Sumar', age: 10)
    expect(user).to be_invalid
  end

  it 'is not valid if age is above 65' do
    user = User.new(name: 'Sumar', age: 70)
    expect(user).to be_invalid
  end

  it 'is valid with valid attributes' do
    user = User.new(name: 'Sumar', age: 24)
    expect(user).to be_valid
  end
  
  it 'is a failing test, to test out the implementation' do
    user = User.new(name: 'Sumar', age: 24)
    expect(user).to be_invalid
  end
end

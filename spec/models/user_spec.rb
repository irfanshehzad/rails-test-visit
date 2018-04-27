require 'rails_helper'

RSpec.describe User, type: :model do

	let(:file) { Rack::Test::UploadedFile.new 'spec/test.csv', 'text/csv' } 
  it "has a valid factory" do
  	user = create(:user)
    expect(user).to be_valid
  end

  it "should import csv" do
		User.import(file)
		expect(User.find_by(name: 'Paul').number).to eq 33
  end
end
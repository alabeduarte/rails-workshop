require 'spec_helper'

describe Attendee, :type => :model do

  it "should not allow create attendee with empty name" do
    expect(Attendee.create.errors.messages).to eq name: ["can't be blank"]
  end

end

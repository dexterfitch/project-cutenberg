require 'rails_helper'

describe Author do
  it { should validate_presence_of :first_name }
  it { should have_many :books }
end

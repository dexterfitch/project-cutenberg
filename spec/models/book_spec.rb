require 'rails_helper'

describe Book do
  it { should validate_presence_of :title }
  it { should validate_presence_of :summary }
  it { should belong_to :author }
  it { should have_many :chapters }
end

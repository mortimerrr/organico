require 'rails_helper'

RSpec.describe Tag, :type => :model do
  it { should have_many(:shop_tags) }
end

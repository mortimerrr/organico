# require 'rails_helper'

# RSpec.describe User, :type => :model do

#   it { should validate_uniqueness_of(:username) }
#   it { should validate_presence_of(:username) }
#   it { should validate_presence_of(:company_name) }

# end

require 'rails_helper'

describe User do

  it { should validate_uniqueness_of(:username) }
  it { should validate_presence_of(:username) }
  it { should validate_presence_of(:company_name) }

end


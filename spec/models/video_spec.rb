require 'rails_helper'

describe Video do
  it { should belong_to :movie }
  it { should validate_presence_of :link }
end

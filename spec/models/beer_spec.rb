require 'spec_helper'

describe Beer do
  it { should have_many :recipes }
end
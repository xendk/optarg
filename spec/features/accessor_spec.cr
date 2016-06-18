require "../spec_helper"

module Optarg::AccessorFeature
  class Model < ::Optarg::Model
    string "--foo"
  end
end

describe "Accessor" do
  it "" do
    result = Optarg::AccessorFeature::Model.parse(%w(--foo bar))
    result.foo.should eq "bar"
  end
end
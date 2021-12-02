require "test_helper"

class DinerTest < ActiveSupport::TestCase
  test "Create diner" do
    diner = Diner.new(first_name:"First", last_name:"Last")
    assert diner
  end
end

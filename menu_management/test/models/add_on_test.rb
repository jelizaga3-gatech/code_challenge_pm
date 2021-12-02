require "test_helper"

class AddOnTest < ActiveSupport::TestCase
  test "Create dressing addon" do
    dressing_add_on = AddOn.new(name:"SaladDressing")
    assert dressing_add_on.save()
  end 
end

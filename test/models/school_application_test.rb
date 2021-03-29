require "test_helper"

class SchoolApplicationTest < ActiveSupport::TestCase
  setup do
    @harry = wizards(:harry_potter)
    @gryffindor = houses(:gryffindor)
    @school_application = SchoolApplication.create(wizard: @harry, house: @gryffindor)
  end
  
  test "Harry applies to Gryffindor and is approved" do
    @school_application.approve
    assert @school_application.approved?
    assert @harry.house == @gryffindor
  end

  test "Harry applies to Slytherin and is denied" do
    @school_application.deny
    assert @school_application.denied?
    assert @harry.house.nil?
  end
end

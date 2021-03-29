require "test_helper"

class HouseTest < ActiveSupport::TestCase
  setup do
    @harry = wizards(:harry_potter)
    @gryffindor = houses(:gryffindor)
    @harry.update(house_id: @gryffindor.id)
  end
  
  test "Harry belongs to Gryffindor" do
    assert @harry.house.present?
    assert @harry.house.name == 'Gryffindor'
    assert @gryffindor.wizards.count == 1
  end
end

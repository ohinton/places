require('rspec')
require('places')

describe(Place) do
  before() do
    Place.clear()
  end

  describe("#list") do
    it("lets you add a place that you've been") do
      test_place = Place.new("New York City")
      expect(test_place.list()).to(eq("New York City"))
    end
  end

  describe(".all") do
    it("is empty at first") do
      expect(Place.all()).to(eq([]))
    end
  end


end

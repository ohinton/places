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

  describe("#save") do
    it("adds a place to the array of saved places") do
      test_place = Place.new("Los Angeles")
      test_place.save()
      expect(Place.all()).to(eq([test_place]))
    end
  end

  describe(".clear") do
    it("empties out all of the saved places") do
      Place.new("New York").save()
      Place.clear()
      expect(Place.all()).to(eq([]))
    end
  end
end

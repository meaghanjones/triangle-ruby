require('rspec')
require('triangle')

describe(Triangle) do
  describe("#triangle?") do
    it("returns false if it is not a triangle")do
      test_triangle = Triangle.new(1, 1, 15)
      expect(test_triangle.triangle?()).to(eq(false))
    end

    describe("#equilateral?") do
      it("returns true if it is an equilateral tirangle")do
        test_equilateral = Triangle.new(3, 3, 3)
        expect(test_equilateral.equilateral?()).to(eq(true))
      end
    end
  end
end

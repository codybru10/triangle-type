require('rspec')
require('triangle')

describe(Triangle) do
  describe("#type?") do
    it("returns Equilateral if all sides are equal") do
      test_triangle = Triangle.new(15,15,15)
      expect(test_triangle.type?()).to(eq("Equilateral"))
    end

    it("returns Isosceles is exactly two sides are equal to each other") do
      test_triangle = Triangle.new(25,15,15)
      expect(test_triangle.type?()).to(eq("Isosceles"))
    end

    it("returns Scalene if no sides are equal") do
      test_triangle = Triangle.new(20,10,15)
      expect(test_triangle.type?()).to(eq("Scalene"))
    end

    it("returns not a triangle if the sum of the lengths of any two sides is less than or equal to the length of the third side") do
      test_triangle = Triangle.new(2,2,8)
      expect(test_triangle.type?()).to(eq("Not a Triangle"))
    end
  end
end

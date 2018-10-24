# Triangle Project Code.

# Triangle analyzes the lengths of the sides of a triangle
# (represented by a, b and c) and returns the type of triangle.
#
# It returns:
#   :equilateral  if all sides are equal
#   :isosceles    if exactly 2 sides are equal
#   :scalene      if no sides are equal
#
# The tests for this method can be found in
#   about_triangle_project.rb
# and
#   about_triangle_project_2.rb
#
def triangle(a, b, c)
# A triangle should not have any sides of length 0
# Negative length doesn't make sense.
# Any two sides of a triangle should add up to more than the third side.


  raise TriangleError, "A triangle should not have any sides of length 0 or negative length" if (a <= 0 || b <= 0 || c <= 0)
  x, y, z = [a,b,c].sort
  raise TriangleError, "Any two sides of a triangle should add up to more than the third side." if x + y <= z

  if a == b && b == c
    return :equilateral
  elsif a != b && b != c && a != c
    return :scalene
  elsif (a == b || b == c || a == c)
    return :isosceles
  end
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end

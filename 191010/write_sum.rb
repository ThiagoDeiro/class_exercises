# Simple Sums - Ruby
# Write a program that can calculate the sum of the first n elements of the following sequences:

# s1 = 1 - 1 + 1 - 1 + 1 - 1 + //etc
# s2 = 1 + 2 + 3 + 4 + 5 + 6 + //etc

# s1(4) = 0
# s2(4) = 10
# Can you guess what the sum would  be if n is infinity?

def s1 num
	num % 2
end
​
def s2 num
	(0..num).sum
end
​
p s1(4)
p s2(4)
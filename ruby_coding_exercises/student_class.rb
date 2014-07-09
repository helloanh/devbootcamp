
class Student
  attr_accessor :scores, :first_name

  def initialize(first_name, scores)
    @first_name = first_name
    @scores = scores
  end

  def average
    @scores.reduce(:+) / @scores.count
  end

  def letter_grade
      "A" if average >= 90
      "B" if average >= 80
      "C" if average >= 70
      "D" if average >= 60
      "E" if average >= 50
      "F"
    end

  def linear_search(students, first_name)
    arr.each_with_index do |student, i|
      student.first_name == name ?  i : -1
    end
  end
end

# Create an array of students with names and test scores
# Alex should be the first student
Alex = Student.new("Alex", [100,100,100,0,100],)
Do = Student.new("Do", [90,100,80,90,90])
Re = Student.new("Re", [70,70,70,70,70])
Mi = Student.new("Mi", [100,100,100,100,100])
Fa = Student.new("Fa", [20,20,20,30,1])

students = [Alex, Do, Re, Mi, Fa]


# linear search method, searches student array for a name
# and return the position of that student



# ----- DRIVER CODE ------

# test1
p students[0].first_name == "Alex"
p students[0].scores.length == 5
p students[0].scores[0] == students[0].scores[4]
p students[0].scores[3] == 0

# test2
p students[0].average == 80
p students[0].letter_grade == 'B'

# test3
p linear_search(students, "Alex") == 0
p linear_search(students, "NOT A STUDENT") == -1
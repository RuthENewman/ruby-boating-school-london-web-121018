class Student

@@all = []

  attr_accessor :first_name

  def initialize(first_name)
    @first_name = first_name
    @@all << self
  end

  def self.all
   @@all
  end

 def add_boating_test(test_name, status, instructor)
   BoatingTest.new(self, test_name, status, instructor)
 end

 def self.find_student(first_name)
   self.all.find {|student| student.first_name == first_name}
 end

 def tests
   BoatingTest.all.select {|test| test.student == self}
 end

 def grade_percentage
   total_passed_courses = 0
    tests.each do |test|
     if test.status == 'passed'
      total_passed_courses += 1
    end
  end
 grade_percentage = total_passed_courses.to_f / tests.length
end

end

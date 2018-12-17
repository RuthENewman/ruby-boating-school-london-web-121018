class Student

@@all = []

  attr_accessor :first_name, :student, :test_name, :status

  def initialize(first_name)
    @first_name = first_name
    @@all << self
  end

 def add_boating_test(student, test_name, status)
   @student = student
   @test_name = test_name
   @status = status
   @@all << self
 end

 def self.find_student(first_name)
   self.all.find {|student| student.first_name}
 end

 def grade_percentage
   BoatingTest.all.each
 end

end

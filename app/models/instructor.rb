class Instructor

@@all = []

attr_accessor :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def pass_student(student, test_name)
    BoatingTest.all.find do |test|
      if test.student == student && test.test_name == test_name
        test.status = 'passed'
        test
      elsif test.student != student || test.test_name != test.name
        pass = BoatingTest.new(student, test_name, 'passed', self)
        pass
      end
    end
  end

  def fail_student(student, test_name)
    BoatingTest.all.find do |test|
      if test.student == student && test.test_name == test_name
        test.status = 'failed'
        test
      elsif test.student != student || test.test_name != test_name
        fail = BoatingTest.new(student, test_name, 'failed', self)
        fail
      end
    end
  end

end

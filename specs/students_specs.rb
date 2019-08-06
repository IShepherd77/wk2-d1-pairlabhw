require ('minitest/autorun')
require('minitest/rg')
require_relative('../students')

class TestStudents < MiniTest::Test

  def test_student_name
    student = Student.new('Jordan', 'e33')
    assert_equal('Jordan', student.student_name())
  end

  def test_student_cohort
    student = Student.new('Jordan', 'e33')
    assert_equal('e33', student.student_cohort())
  end

  def test_student_can_talk
    student = Student.new('Jordan', 'e33')
    assert_equal('I can talk', student.student_can_talk())
  end


  # def test_set_student_name
  #   student = Student.new('Jordan', 'e33')
  #   student.set_student_name = 'Ian'
  #   assert_equal('Ian', student.student_name())
  # end

  def test_set_student_name
    student = Student.new('Jordan', 'e33')
    student.set_student_name('Ian')
    assert_equal('Ian', student.student_name())
  end

  def test_set_student_cohort
    student = Student.new('Jordan', 'e33')
    student.set_student_cohort('G33')
    assert_equal('G33', student.student_cohort())
  end

  def test_student_favourite_language
    student = Student.new('Jordan', 'e33')
    assert_equal('I love ruby', student.say_favourite_language("ruby"))
  end




end

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
    assert_equal('I can talk', student.talk())
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






end

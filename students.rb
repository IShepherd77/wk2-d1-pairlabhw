class Student

  def initialize(input_student_name, input_student_cohort)
    @name = input_student_name
    @cohort = input_student_cohort
  end


  def student_name()
    return @name
  end

  def student_cohort()
    return @cohort
  end

  def student_can_talk()
    return "I can talk"
  end

  def say_favourite_language(language)
    return "I love " + language
  end


  def set_student_name(set_new_name)
    @name = set_new_name
  end

  def set_student_cohort(set_new_cohort_name)
    @cohort = set_new_cohort_name
  end
end

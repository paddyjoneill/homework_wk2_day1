class CodeClanStudent

  def initialize(name, cohort)
    @name = name
    @cohort = cohort
    @favourite_language = nil
  end

  def get_student_name()
    return @name
  end

  def get_student_cohort()
    return @cohort
  end

  def set_student_name(name)
    @name = name
  end

  def set_student_cohort(cohort)
    @cohort = cohort
  end

  def can_talk
    return "I can talk!"
  end

  def say_favourite_language(language)
    @favourite_language = language
    return "I love #{@favourite_language}"
  end

end

class CodeClanStudent

  def initialize(name, cohort)
    @name = name
    @cohort = cohort
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


end

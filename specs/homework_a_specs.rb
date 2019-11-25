require('minitest/autorun')
require('minitest/reporters')
require_relative('../homework_a')

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class TestCodeClanStudent < MiniTest::Test

def test_get_student_name
  student = CodeClanStudent.new("Stephen", "E36")
  assert_equal("Stephen", student.get_student_name())
end

def test_get_student_cohort
  student = CodeClanStudent.new("Stephen", "E36")
  assert_equal("E36", student.get_student_cohort())
end

def test_set_student_name
  student = CodeClanStudent.new("Stephen", "E36")
  student.set_student_name("Paddy")
  assert_equal("Paddy", student.get_student_name())
end

def test_set_student_cohort
  student = CodeClanStudent.new("Stephen", "E36")
  student.set_student_cohort("E37")
  assert_equal("E37", student.get_student_cohort())
end

def test_student_can_talk
  student = CodeClanStudent.new("Stephen", "E36")
  assert_equal("I can talk!",student.can_talk)
end

def test_say_favourite_language
  student = CodeClanStudent.new("Stephen", "E36")
  assert_equal("I love Ruby", student.say_favourite_language("Ruby"))
end


end

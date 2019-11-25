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




end

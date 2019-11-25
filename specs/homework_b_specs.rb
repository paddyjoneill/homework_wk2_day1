require('minitest/autorun')
require('minitest/reporters')
require_relative('../homework_b')

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

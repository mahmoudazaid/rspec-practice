require_relative '../unit/string_analyzer/string_analyzer'
require 'spec_helper'

describe StringAnalyzer do
  #Setup
  around(:example) do |ex|
    @sa = StringAnalyzer.new
    ex.run
    puts "Hook After "
  end

  context "With valid input" do
    puts "First Example running"
    it "should detect when a string contains vowels" do
      expect(@sa.contain_vowels? ('iii')).to be true
    end

    #ISOLATED  Example
    context "should detect when a string doesn't contain vowels" do
      puts "Second Example running"
      it {expect(@sa.contain_vowels?('bcdfg')).to be false}

      puts "Third Example running"
      it {expect(@sa.contain_vowels?('')).to be false}
    end
  end
end
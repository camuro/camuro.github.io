######################################################################
# test_head.rb
# 
# Test case for the File.head method. This test should be run via
# the 'rake test_head' task.
######################################################################
require 'rubygems'
gem 'test-unit'

require 'test/unit'
require 'ptools'

class TC_FileHead < Test::Unit::TestCase
   def self.startup
      Dir.chdir('test') if File.exists?('test')
      File.open('test_file1.txt', 'w'){ |fh| 25.times{ |n| fh.puts "line#{n+1}" } }
   end
   
   def setup
      @test_file = 'test_file1.txt'
      @expected_head1 = ["line1\n","line2\n","line3\n","line4\n","line5\n"]
      @expected_head1.push("line6\n","line7\n","line8\n","line9\n","line10\n")
      @expected_head2 = ["line1\n","line2\n","line3\n","line4\n","line5\n"]
   end

   def test_head_basic
      assert_respond_to(File, :head)
      assert_nothing_raised{ File.head(@test_file) }
      assert_nothing_raised{ File.head(@test_file, 5) }
      assert_nothing_raised{ File.head(@test_file){} }
   end

   def test_head_expected_results
      assert_kind_of(Array, File.head(@test_file))
      assert_equal(@expected_head1, File.head(@test_file))
      assert_equal(@expected_head2, File.head(@test_file, 5))
   end

   def test_head_expected_errors
      assert_raises(ArgumentError){ File.head(@test_file, 5, "foo") }
      assert_raises(Errno::ENOENT){ File.head("bogus") }
   end

   def teardown
      @test_file = nil
   end

   def self.shutdown
      File.delete('test_file1.txt') if File.exists?('test_file1.txt')
   end
end

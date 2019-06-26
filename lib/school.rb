# code here!
require 'pry'

class School
    attr_accessor :name

    def initialize(name)
        @name = name
        @roster = {}
    end

    def name
        @name
    end

    def roster
        @roster
        
    end

    def add_student(student_name,grade)
     if @roster.has_key?(grade)
        @roster[grade] << student_name
     else

        @roster[grade] = []
        @roster[grade] << student_name
     end

    end
    def grade(grade)
        @roster.map do |key,value|
            if key == grade
                return value
            end
        end


    end
    
    def sort
        hash = {}
        @roster.each do |key,value|
        hash[key] = value.sort
    end
    hash
end
end
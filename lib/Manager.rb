class Manager

    attr_reader :name, :department, :age, :employee

    @@all = []

    def initialize(name,department,age)
        @name = name 
        @department = department 
        @age = age

        @@all << self
    end

    def self.all 
        @@all
    end
    
    def employees 
        Employee.all.select {|employee| employee.manager == self}
    end

    def hire_employee(name, salary)
        Employee.new(name, salary, self)
    end

    def self.all_departments 
        @@all.select {|manager| manager.department}.map{|m|m.department}
    end

    def self.average_age 
        
    end

end

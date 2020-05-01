class Employee

    attr_reader :name, :salary, :manager

    @@all = []

    def initialize(name, salary, manager)
        @name = name
        @salary = salary
        @manager = manager

        @@all << self
    end


    def self.all 
        @@all
    end

    def manager_name 
        self.manager.name
    end

    def self.paid_over(numb)
        self.all.select {|i| i.salary >= numb}
    end

    def self.find_by_department(department)
        self.all.find {|i| i.manager.department == department}
    end

    def tax_braket
        
    end


end

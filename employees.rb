class Company
    attr_reader :name
    attr_accessor :employees
    #This represents a company in which people work

    def initialize(name = "Michael's", employees = [])
        @name = name
        @employees = employees
    end

    def company_info
        puts "#{@name} employees"
        @employees.each{ |employee| p "Name: #{employee.name}, Start Date: #{employee.start_date}, Title: #{employee.title}" }
    end
    # Add the remaining methods to fill the requirements above
end

class Employee
    attr_accessor :name
    attr_accessor :title
    attr_accessor :start_date
    
    def initialize (name, title, start_date)
        @name = name
        @title = title
        @start_date = start_date
    end

    def employee_info
        puts "#{@name} started with us on #{@start_data} as a #{@title}"
    end

end

new_company = Company.new

new_company.employees << Employee.new('Michael', 'Software Developer', '01-01-2017')
new_company.employees << Employee.new('Sarah Bea', 'RN', '02-02-2017')
new_company.employees << Employee.new('Kay', 'RN', '03-03-2017')

new_company.company_info
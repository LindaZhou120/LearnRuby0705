require 'uri'


class User
    attr_accessor :name, :address, :department
    def initialize(name, address, department)
        @name = name
        @address = address
        @department = department
        @department.users << self
    end
end

class Company
    attr_accessor :name, :url, :departments
    def initialize(name,url)
        @name = name
        @url =URI.parse(url)  
    end

    def users
        departments.map(&:users)
    end
end

class Department
    attr_accessor :name, :users
    def initialize(name)
        @name = name
    end

    def users
        @users =[] || @users
    end
end



#Set data
c= Company.new("Acme","https://example.com")
sales = Department.new("Sales")
engineering = Department.new("Engineering")
bob = User.new("Bob Smith","1 Main Street", sales)
mary = User.new("Mary Jane","10 Independence",engineering)
puts engineering.users.map(&:name)
c.departments = [sales, engineering]
puts c.departments
puts c.users
puts sales.users
puts engineering.users
puts bob
puts mary

array = ["n","b","a"]
puts array.map { |string| string.upcase }
 

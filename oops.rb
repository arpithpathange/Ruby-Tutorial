#!/usr/bin/ruby
$globalVariable =10
class Vehicle
	VAR1 =90
	@@vehicle_cnt =0
	def initialize(no,name,registration)
		@vehicle_no = no
		@vehicle_name = name
		@vehicle_registration =registration
		total_cnt()
	end

	def total_cnt
		@@vehicle_cnt += 1
		
	end

	def getDetails
		puts "Vehicle name is #{@vehicle_name}"
		puts "Vehicle no is #{@vehicle_no}"
		puts "Vehicle registration is #{@vehicle_registration}"
	end

	cust1 =  Vehicle.new("1","Arpith","1234")
	cust2 =  Vehicle.new("2","Pathange","4321")
	cust1.getDetails
	cust2.getDetails
	puts "Total Vehicle count is #{@@vehicle_cnt}"
	puts "Global varaible seems to be unchanged #{$globalVariable}"
	puts "Contants seems to be contants #{VAR1}"
end
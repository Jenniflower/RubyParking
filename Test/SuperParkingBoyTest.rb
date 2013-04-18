require '../Src/SuperParkingBoy'
require './ParkingBoyTest'
require '../Src/ParkingException'
require 'minitest/autorun'

class SuperParkingBoyTest < MiniTest::Unit::TestCase  

    def setup
		prepare_75_vacancy_parkinglot
		prepare_50_vacancy_parkinglot
		prepare_100_vacancy_parkinglot
	end
	
	def teardown
	end

	def prepare_75_vacancy_parkinglot
		@_parkingLot_75_vacancy = ParkingLot.new("parkinglot_4",4)
		@_parkingLot_75_vacancy.Park Car.new("car0")
	end
	
	def prepare_50_vacancy_parkinglot
		@_parkingLot_50_vacancy = ParkingLot.new("parkinglot_8",8)
		@_parkingLot_50_vacancy.Park Car.new("car1")
		@_parkingLot_50_vacancy.Park Car.new("car2")
		@_parkingLot_50_vacancy.Park Car.new("car3")
		@_parkingLot_50_vacancy.Park Car.new("car4")
		
	end
	
	def prepare_100_vacancy_parkinglot
    	@_parkingLot_100_vacancy = ParkingLot.new("parkinglot_2",2)
	end
	
	def test_park_successfully_On_lot_with_100_vacancy_rate_given_75_and_100_vacancy_rate
   		@_sut = SuperParkingBoy.new
		@_sut.AddParkingLot(@_parkingLot_75_vacancy)
		@_sut.AddParkingLot(@_parkingLot_100_vacancy)
		
		car_new=Car.new("carnew")
		ticket = @_sut.Park car_new
		assert @_parkingLot_100_vacancy.ValidTicket? ticket
	end

	def test_park_successfully_On_lot_with_75_vacancy_rate_given_75_and_50_vacancy_rate
   		@_sut = SuperParkingBoy.new
		@_sut.AddParkingLot(@_parkingLot_75_vacancy)
		@_sut.AddParkingLot(@_parkingLot_50_vacancy)
		
		car_new=Car.new("carnew")
		ticket = @_sut.Park car_new
		assert @_parkingLot_75_vacancy.ValidTicket? ticket
	end
	
end
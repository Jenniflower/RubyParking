require '../Src/SuperParkingBoy'
require '../Src/ParkingException'
require 'minitest/autorun'

class SuperParkingBoyTest < MiniTest::Unit::TestCase 

    def setup
		@_sut = SuperParkingBoy.new
		
		add_75_vacancy_parkinglot
		add_100_vacancy_parkinglot
	end
	
	def teardown
	end
	
	def add_75_vacancy_parkinglot
		@_parkingLot_75_vacancy = ParkingLot.new("parkinglot_4",4)
		@_parkingLot_75_vacancy.Park Car.new("car0")
		@_sut.AddParkingLot(@_parkingLot_75_vacancy)
	end
	
	def add_100_vacancy_parkinglot
    	@_parkingLot_100_vacancy = ParkingLot.new("parkinglot_2",2)
		@_sut.AddParkingLot(@_parkingLot_100_vacancy)
	end
	
	def test_park_successfully_On_lot_with_bigger_vacancy_given_two_parkinglots
	    car_1=Car.new("car1")
		ticket = @_sut.Park @_car_1
		assert @_parkingLot_100_vacancy.ValidTicket? ticket
	end
	
end
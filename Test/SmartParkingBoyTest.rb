require '../Src/SmartParkingBoy'
require '../Src/ParkingException'
require 'minitest/autorun'
require './ParkingBoyTest'

class SmartParkingBoyTest < MiniTest::Unit::TestCase  

    def setup
		@_parkingLot_2 = ParkingLot.new("parkinglot_3",2)
		@_parkingLot_3 = ParkingLot.new("parkinglot_3",3)

	end
	
	def teardown
	end
	
	def test_park_successfully_On_lot_with_bigger_capacity_given_two_parkinglots
	    @_sut = SmartParkingBoy.new
		@_sut.AddParkingLot(@_parkingLot_3)
		@_sut.AddParkingLot(@_parkingLot_2)

        car_new =Car.new("carnew")		
		ticket = @_sut.Park car_new
		assert @_parkingLot_3.ValidTicket? ticket
	end
	
end
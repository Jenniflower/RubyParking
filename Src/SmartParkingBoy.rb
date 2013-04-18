require '../Src/ParkingLot'
require '../Src/ParkingException'
require '../Src/ParkingBoy'

class SmartParkingBoy < ParkingBoy
    
	def FindParkingLot
	    @parkingLots.max{|lhs, rhs| lhs.avaliable_count <=> rhs.avaliable_count}
	end
	
end
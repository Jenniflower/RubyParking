require '../Src/ParkingLot'
require '../Src/ParkingException'
require '../Src/ParkingBoy'

class SuperParkingBoy < ParkingBoy
    
	def FindParkingLot 
	    @parkingLots.max{|lhs, rhs| lhs.Vacancy_Rate <=> rhs.Vacancy_Rate }
	end
end
require '../Src/ParkingLot'
require '../Src/ParkingException'
require '../Src/ParkingBoy'

class SuperParkingBoy < ParkingBoy
    
	def findParkingLot 
	    @parkingLots.max{|lhs, rhs| lhs.Vacancy_Rate <=> rhs.Vacancy_Rate }
	end
end
class TenisScore

	def initialize()
		@countJ1=0
		@countJ2=0
	end

	def pointForJ1()
		@countJ1+=1
	end

	def pointForJ2()
		@countJ2+=1
	end

	def showResult()
		pointsJ1=convertToPoints(@countJ1)
		pointsJ2=convertToPoints(@countJ2)
		difference=(pointsJ1-pointsJ2)
		equals=(difference==0)
		if(equals) then
			messageForEqualsPoints(pointsJ1)
		else 
			messageForNotEqualsPoints(pointsJ1,pointsJ2)
		end
	end

	def messageForEqualsPoints(pointsJ1)
		if (pointsJ1>=40) then
			'Deuce'
		else
			pointsJ1.to_s+' iguales'
		end
	end

	def messageForNotEqualsPoints(pointsJ1,pointsJ2)
		difference=(@countJ1-@countJ2)
		if(difference.abs<2)
			messageForShortDifference(pointsJ1,pointsJ2)
		else 
			messageForBigDifference(difference)
		end
	end

	def messageForShortDifference(pointsJ1,pointsJ2)	
		if (pointsJ1>=40) then
			difference=pointsJ1-pointsJ2
			messageAdvantageFor(difference)
		else
			pointsJ1.to_s+' '+pointsJ2.to_s
		end
	end

	def messageAdvantageFor(difference)
		if (difference>0 )then
			'Advantage for J1'
		else
			'Advantage for J2'
		end
	end

	def messageForBigDifference(difference)
		if(difference>0) then
			'Game for J1'
		else
			'Game for J2'
		end
	end

	def convertToPoints(value)
		case value
		when 0
			output=0
		when 1
			output=15
		when 2
			output=30
		when 3
			output=40
		else
			output=40+value
		end
	end

end
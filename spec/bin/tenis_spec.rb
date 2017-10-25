require ('./lib/tenisScore')
describe TenisScore do

	before(:each)do
		@score = TenisScore.new()
	end

	it "should return 0 iguales" do
		expect(@score.showResult()).to eq('0 iguales')
	end

	it "should return 15 0" do
		@score.pointForJ1()
		expect(@score.showResult()).to eq('15 0')
	end

	it "should return 0 15" do
		@score.pointForJ2()
		expect(@score.showResult()).to eq('0 15')
	end

	it "should return 15 iguales" do
		@score.pointForJ2()
		@score.pointForJ1()
		expect(@score.showResult()).to eq('15 iguales')
	end

	it "should return 30 15" do
		@score.pointForJ2()
		@score.pointForJ1()
		@score.pointForJ1()
		expect(@score.showResult()).to eq('30 15')
	end

	it "should return 15 30" do
		@score.pointForJ2()
		@score.pointForJ2()
		@score.pointForJ1()
		expect(@score.showResult()).to eq('15 30')
	end

	it "should return 30 iguales" do
		@score.pointForJ2()
		@score.pointForJ2()
		@score.pointForJ1()
		@score.pointForJ1()
		expect(@score.showResult()).to eq('30 iguales')
	end

	it "should return Game for J2" do
		@score.pointForJ2()
		@score.pointForJ2()
		@score.pointForJ2()
		@score.pointForJ2()
		@score.pointForJ1()
		expect(@score.showResult()).to eq('Game for J2')
	end

	it "should return Deuce" do
		@score.pointForJ2()
		@score.pointForJ2()
		@score.pointForJ2()
		@score.pointForJ1()
		@score.pointForJ1()
		@score.pointForJ1()
		expect(@score.showResult()).to eq('Deuce')
	end

	it "should return Advantage for J1" do
		@score.pointForJ2()
		@score.pointForJ2()
		@score.pointForJ2()
		@score.pointForJ1()
		@score.pointForJ1()
		@score.pointForJ1()
		@score.pointForJ1()
		expect(@score.showResult()).to eq('Advantage for J1')
	end

	it "should return Deuce" do
		@score.pointForJ2()
		@score.pointForJ2()
		@score.pointForJ2()
		@score.pointForJ1()
		@score.pointForJ1()
		@score.pointForJ1()
		@score.pointForJ1()
		@score.pointForJ2()
		expect(@score.showResult()).to eq('Deuce')
	end

	it "should return Advantage for J2" do
		@score.pointForJ2()
		@score.pointForJ2()
		@score.pointForJ2()
		@score.pointForJ1()
		@score.pointForJ1()
		@score.pointForJ1()
		@score.pointForJ1()
		@score.pointForJ2()
		@score.pointForJ2()
		expect(@score.showResult()).to eq('Advantage for J2')
	end
	
	it "should return Game for J2" do
		@score.pointForJ2()
		@score.pointForJ2()
		@score.pointForJ2()
		@score.pointForJ1()
		@score.pointForJ1()
		@score.pointForJ1()
		@score.pointForJ1()
		@score.pointForJ2()
		@score.pointForJ2()
		@score.pointForJ2()
		expect(@score.showResult()).to eq('Game for J2')
	end

end
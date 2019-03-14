
require 'docking_station'

describe DockingStation do

	describe '#release_bike' do
		it 'raises an error when there are no bikes available' do
			expect { subject.release_bike }.to raise_error 'No bikes available'
		end
	end

	it 'responds to release_bike' do
		expect(subject).to respond_to :release_bike
	end
	it 'release working bikes' do
		bike = subject.release_bike
		expect(bike).to be_working
	end
	it { is_expected.to respond_to( :dock).with(1).argument }
	it 'returns docked bikes' do
		bike = Bike.new
		subject.dock(bike)
		expect(subject.bike).to eq bike

	end


end
  

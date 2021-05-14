require 'birthday'

RSpec.describe Birthday do
  subject { described_class.new(name, day, month) }
  let (:name) { double :name }
  let (:day) { double :day }
  let (:month) { double :month }


  describe '#new' do
    it 'stores user data' do
      expect(subject.name).to eq(name)
      expect(subject.day).to eq(day)
      expect(subject.month).to eq(month)
    end
  end

end


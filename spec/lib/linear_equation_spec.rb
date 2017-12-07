require_relative '../spec_helper'

RSpec.describe LinearEquation do
  describe '#output_l' do
    subject { described_class.new(first_coef, second_coef) }

    context 'with coef = 1' do
      let(:first_coef) { 1 }
      let(:second_coef) { 5 }

      specify { expect(subject.output_l).to eq('-5') }
    end

    context 'without coef' do
      let(:first_coef) { 0 }
      let(:second_coef) { 5 }

      specify { expect(subject.output_l).to eq('Error') }
    end   
  end
end
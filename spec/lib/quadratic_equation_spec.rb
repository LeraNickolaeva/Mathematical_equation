require_relative '../spec_helper'

RSpec.describe QuadraticEquation do
  describe '#output_q' do
    subject { described_class.new(first_coef, second_coef, third_coef) }

    context 'discriminant < 0' do
      let(:first_coef) { 100 }
      let(:second_coef) { 1 }
      let(:third_coef) { 2 }
      specify { expect(subject.output_q).to eq('Error') }
    end

      context 'discriminant = 0' do
      let(:first_coef) { 3 }
      let(:second_coef) { 18 }
      let(:third_coef) { 27 }

      specify { expect(subject.output_q).to eq('-3') }
    end

    context 'discriminant > 0' do
      let(:first_coef) { 1 }
      let(:second_coef) { 1 }
      let(:third_coef) { 0 }
      specify { expect(subject.output_q).to eq('[0.0, -1.0]') }
    end 
  end
end
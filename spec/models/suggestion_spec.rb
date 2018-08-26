require 'rails_helper'

RSpec.describe Suggestion, type: :model do
  describe :default_scope do
    context 'Trying with no Suggestions' do
      it 'does not fetch any suggestions' do
        expect(Suggestion.count).to eq 0
      end
    end
  end
end

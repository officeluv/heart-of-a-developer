RSpec.describe HeartOfADeveloper do
  it "has a version number" do
    expect(HeartOfADeveloper::VERSION).not_to be nil
  end

  it 'puts out a string' do
    expect(described_class).to receive(:puts).once

    described_class.speak
  end
end

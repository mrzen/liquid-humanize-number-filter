require 'liquid'
require_relative '../lib/liquid-humanize-number'

describe HumanizeNumber do

  context "with default arguments" do

    before do
      @template = Liquid::Template.parse("{{value | humanize_number}}")
    end

    it "does nothing to numbers under 1000" do
      expect(@template.render('value' => 999)).to eq "999"
      expect(@template.render('value' => 0)).to eq "0"
      expect(@template.render('value' => -999)).to eq "-999"
    end

    it "creates single groups for numbers between 1000 and 999,999" do
      expect(@template.render('value' => 999_999)).to eq "999,999"
      expect(@template.render('value' => -999_999)).to eq "-999,999"
      expect(@template.render('value' => 1_000)).to eq "1,000"
      expect(@template.render('value' => -1_000)).to eq "-1,000"
    end
  end

  context "with an invalid grouping method" do
    it "does not do any grouping" do
      template = Liquid::Template.parse("{{value | humanize_number:',':'invalid'}}")
      expect(template.render('value' => 1_000)).to eq "1000"
    end
  end
end

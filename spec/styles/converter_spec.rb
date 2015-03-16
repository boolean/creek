require './spec/spec_helper'

describe Creek::Styles::Converter do

  describe :call do
    def convert(value, type, style)
      Creek::Styles::Converter.call(value, type, style)
    end

    describe :date_time do
      it "works" do
        convert('41275', 'n', :date_time).should == Date.new(2013,01,01)
      end
    end
  end
end

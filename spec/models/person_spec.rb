require 'spec_helper'

describe "Person" do

  describe "::with_history_of" do
    it "should return people with a history of the given incident" do
      robbers = Person.with_history_of("Armed Robbery")
      robbers.count.should == 2
      robbers.should include([@kelvin_martin, @john_dillinger])
    end
  end

  describe "::tracked_by" do
    it "should return people with fingerprints tracked by the given organization" do
      people_tracked_by_fbi = Person.tracked_by("Federal Bureau of Investigations")
      people_tracked_by_fbi.count.should == 2
      people_tracked_by_fbi.should include([@al_capone, @john_dillinger])
    end
  end
end
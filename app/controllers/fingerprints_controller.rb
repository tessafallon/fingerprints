class FingerprintsController < ApplicationController

def index
	@fingerprints = Fingerprint.all
end

end
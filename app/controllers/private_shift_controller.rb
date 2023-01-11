class PrivateShiftController < ApplicationController
  def index
    @private_shifts = PrivateShift.all
  end

  def new
  end
end

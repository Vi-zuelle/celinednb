class MyCelineversionsController < ApplicationController
  def index
    @celineversions = current_user.celineversions
  end
end

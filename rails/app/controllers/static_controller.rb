class StaticController < ApplicationController
  def landing
  end
  
  def graph
    respond_to do |format|
      format.dot
    end
  end

  def bpel
  end
  
  def report
  end
end

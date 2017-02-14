class TestsController < ApplicationController
  def index
    string = "~@c||1||MacLeod Building||Where the smart people are at||n||Engineering Student Centre||CHEEZE||n||MacLeod Building||Where the smart people are at||n||MacMillan Building||Farmers???||n||ICICS||Cool guys are here||h||MacLeod Building||Where the smart people are at||h||MacMillan Building||Farmers???||h||ICICS||Cool guys are here||h||Engineering Student Centre||CHEEZE||h||ICICS||Cool guys are here||h||Engineering Student Centre||CHEEZE||h||ICICS||Cool guys are here||h||Engineering Student Centre||CHEEZE||h||ICICS||Cool guys are here||h||Engineering Student Centre||CHEEZE||h||ICICS||Cool guys are here||h||Engineering Student Centre||CHEEZE^&"
    render text: string
  end
end

require '../spec_helper'
describe 'HogeModel', ->
  beforeEach (done) -> 
    init_window {}, ->
      require '../../lib/models/hoge_model.js.coffee'
      done()

  it 'should dump inner foo', ->
    hoge = new MyApp.Models.HogeModel 'wwwwy'
    hoge.foo.should.equal 'wwwwy'
   


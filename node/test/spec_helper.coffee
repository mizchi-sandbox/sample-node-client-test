require 'should'
jsdom = require 'jsdom'

global.MyApp =
  Models: {}
  Views: {}

# debug p
global.p = console.log

# initialize all namespace instance
global.init_window = (opts = {}, callback) ->
  # delete all cache each initiazation
  delete require.cache[key] for key,val of require.cache
  jsdom.env
    html: opts.html or '<html><body></body></html>'
    done: (errors, window) ->
      global[key] = window[key] for key in [
        'window', 'document'
      ]
      callback errors

console.log "load done"

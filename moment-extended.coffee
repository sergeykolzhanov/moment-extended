module.exports = require 'moment'
module.exports.fn.daySeconds = (ds) ->
    if ds?
        s = Math.floor ds
        @milliseconds (ds-s)*1000
        @seconds s % 60
        @minutes (s % 3600) / 60
        @hours s / 3600
    else
        @milliseconds() / 1000 + @seconds() + @minutes() * 60 + @hours() * 3600
module.exports.fn.dayTime = (ds) ->
    if ds?
        p = ds.split(':')
        @hours parseFloat(p[0])
        @minutes parseFloat(p[1])
        @seconds 0
        @milliseconds 0
    else
        @format 'HH:mm'

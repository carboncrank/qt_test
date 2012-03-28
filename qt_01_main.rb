require 'rubygems'
require 'Qt4'
require './main_window.rb'

app = Qt::Application.new(ARGV)
win = MainWindow.new
win.show()
app.exec()
require 'rubygems'
require 'Qt4'
require './main_window.rb'

app = Qt::Application.new(ARGV)
mainWindow = MainWindow.new
mainWindow.show()
app.exec()
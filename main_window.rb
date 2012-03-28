require 'rubygems'
require 'Qt4'

class MainWindow < Qt::Widget
  
  def initialize()
    super()
    
    setWindowTitle(tr("Welcome to your Qredo account"))
    setStyleSheet "QWidget { background-color: #ffffff }"
    
    drawWindow()
    
    resize 450, 350
    move 50, 200
    
    show
  end
  
  def drawWindow()
    gridLayout = Qt::GridLayout.new self

    closeButton = Qt::PushButton.new "Close", self
    closeButton.setFont(Qt::Font.new('Calibri', 14))
    connect(closeButton, SIGNAL('clicked()'), $qApp, SLOT('quit()'))

 
    listWindow = Qt::LineEdit.new
    textWindow = Qt::TextEdit.new

    gridLayout.addWidget listWindow, 0, 0, 1, 1
    gridLayout.addWidget textWindow, 0, 1, 2, 2
    gridLayout.addWidget closeButton, 2, 2
    
  end

  def closeButton()
  end

end

thisApp = Qt::Application.new(ARGV)
MainWindow.new
thisApp.exec

    
#   
#   slots 'open_file()', 'about()'
#   attr_reader :image
#   
#   def initialize(parent=nil)
#     super(parent)
#     setWindowTitle(tr("Welcome to your Qredo account"))
#     setStyleSheet "QWidget { background-color: #414141 }"
#     
#     vbox = Qt::VBoxLayout.new self
#     hbox = Qt::HBoxLayout.new
#     
#     # gridLayout.addWidget(drawButtons, 1, 1)
#     drawButtons
#     # drawMenus
#     drawWidgets
#     
#     # Set window starting size (it is resizable)
#     resize 450, 350
#     # setSizePolicy(Qt::SizePolicy.new(Qt::SizePolicy::Fixed, Qt::SizePolicy::Fixed))
#     
#     # Set starting position in display - i.e. not behind my text editor :-)
#     move 50, 200
#     
#     setToolTip(tr("This is a tooltip"))
#     
#     
#   end
#   
#   def about
#     Qt::MessageBox.information(self, tr("Hello"), tr("This is a test Qredo App made using Ruby & Qt"))
#   end
#   
#   def drawButtons()
#     quit = Qt::PushButton.new 'Quit', self
#     quit.setFont(Qt::Font.new('Calibri', 14))
#     # quit.size = 100, 30
#     # quit.move = 50, 50
#     connect quit, SIGNAL('clicked()'), $qApp, SLOT('quit()')
#   end
#   
#   def open_file
#     fileName = Qt::FileDialog.getOpenFileName(self, tr("Open"), "", "Qredo files (*)")
#     load_qredo(fileName) unless fileName.nil?
#   end
#   
#   # def drawMenus()
#   #    fileMenu = menuBar().addMenu(tr("&File"))
#   #    menuBar().addMenu(tr("Dummy"))
#   #    helpMenu = menuBar().addMenu(tr("&Help"))
#   #    openFile = fileMenu.addAction(tr("&Open..."))
#   #    openFile.shortcut = Qt::KeySequence.new(tr("Ctrl+O"))
#   #    exitAction = fileMenu.addAction(tr("E&xit"))
#   #    aboutView = helpMenu.addAction(tr("&About"))
#   #    
#   #    connect(openFile, SIGNAL('triggered()'), self, SLOT('open_file()'))
#   #    connect(exitAction, SIGNAL('triggered()'), $qApp, SLOT('quit()'))
#   #    connect(aboutView, SIGNAL('triggered()'), self, SLOT('about()'))
#   #  end
#   #  
#   def drawWidgets
#     frame = Qt::Frame.new
#     frameLayout = Qt::HBoxLayout.new(frame)
#     # @imageWidget = ImageWidget.new(self)
#     @treeView = Qt::TreeView.new
#   
#     frameLayout.addWidget(@treeView)
#     # frameLayout.addWidget(@imageWidget)
#     # setCentralWidget(frame)
#   end
#   
# end
#   
#   app = Qt::Application.new ARGV
#   MainWindow.new
#   app.exec
    
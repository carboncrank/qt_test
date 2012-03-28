# require 'tree_model'
# require 'image_widget'

class MainWindow < Qt::MainWindow
  
  slots 'open_file()', 'about()'
  attr_reader :image
  
  def initialize(parent=nil)
    super(parent)
    drawMenus
    setupWidgets
    setSizePolicy(Qt::SizePolicy.new(Qt::SizePolicy::Fixed, Qt::SizePolicy::Fixed))
    setWindowTitle(tr("Your Qredo account"))
  end
  
  def about
    Qt::MessageBox.information(self, tr("Hello"), tr("This is a test Qredo App made using Ruby & Qt"))
  end
  
  
  def open_file
    fileName = Qt::FileDialog.getOpenFileName(self, tr("Open"), "", "Qredo files (*)")
    load_qredo(fileName) unless fileName.nil?
  end
  
  def drawMenus()
    fileMenu = menuBar().addMenu(tr("&File"))
    menuBar().addMenu(tr("Dummy"))
    helpMenu = menuBar().addMenu(tr("&Help"))
    openFile = fileMenu.addAction(tr("&Open..."))
    openFile.shortcut = Qt::KeySequence.new(tr("Ctrl+O"))
    exitAction = fileMenu.addAction(tr("E&xit"))
    aboutView = helpMenu.addAction(tr("&About"))
    
    connect(openFile, SIGNAL('triggered()'), self, SLOT('open_file()'))
    connect(exitAction, SIGNAL('triggered()'), $qApp, SLOT('quit()'))
    connect(aboutView, SIGNAL('triggered()'), self, SLOT('about()'))
  end
  
  def setupWidgets
    frame = Qt::Frame.new
    frameLayout = Qt::HBoxLayout.new(frame)
    # @imageWidget = ImageWidget.new(self)
    @treeView = Qt::TreeView.new
  
    frameLayout.addWidget(@treeView)
    # frameLayout.addWidget(@imageWidget)
    setCentralWidget(frame)
  end
  
end
  
    
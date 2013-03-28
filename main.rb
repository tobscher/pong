$:.push File.expand_path('../lib', __FILE__)
$:.push File.expand_path('../game', __FILE__)

require 'java'
require 'lwjgl.jar'
require 'slick.jar'

java_import org.newdawn.slick.BasicGame
java_import org.newdawn.slick.GameContainer
java_import org.newdawn.slick.Graphics
java_import org.newdawn.slick.Input
java_import org.newdawn.slick.SlickException
java_import org.newdawn.slick.AppGameContainer

require './game/entities'
require './game/presenters'
require './pong'

app = AppGameContainer.new(Pong.new('SlickDemo'))
app.set_display_mode(640, 480, false)
app.start
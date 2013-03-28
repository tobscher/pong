$:.push File.expand_path('../lib', __FILE__)
$:.push File.expand_path('../game', __FILE__)

require 'java'
require 'lwjgl.jar'
require 'jogg-0.0.7.jar'
require 'jorbis-0.0.15.jar'
require 'slick.jar'

java_import org.newdawn.slick.BasicGame
java_import org.newdawn.slick.GameContainer
java_import org.newdawn.slick.Graphics
java_import org.newdawn.slick.Input
java_import org.newdawn.slick.SlickException
java_import org.newdawn.slick.AppGameContainer
java_import org.newdawn.slick.geom.Circle
java_import org.newdawn.slick.geom.Rectangle
java_import org.newdawn.slick.geom.Vector2f
java_import org.newdawn.slick.Sound

require './game/entities'
require './game/presenters'
require './pong'

app = AppGameContainer.new(Pong.new('SlickDemo'))
app.set_target_frame_rate(60)
app.set_display_mode(640, 480, false)
app.start

class Scene
  @@scenes = {}

  @@current_scene_name = nil

  def self.add(scene_obj, scene_name)
    p ("scene.rb-self.add/7")
    p ("scene_obj：#{scene_obj.to_s}")
    p ("scene_name：#{scene_name.to_s}")
    @@scenes[scene_name.to_sym] = scene_obj
  end

  def self.move_to(scene_name)
    p ("scene.rb-self.move_to/12")
    p ("scene_name：#{scene_name.to_s}")
    @@current_scene_name = scene_name.to_sym
  end

  def self.play(score)
    p ("scene.rb-self.play/17")
    p ("score：#{score.to_s}")
    @@scenes[@@current_scene_name].play(score)
  end
end

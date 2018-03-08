class Scene
  @@scenes = {}

  @@current_scene_name = nil

  def self.add(scene_obj, scene_name)
    p ("scene.rb-self.add/7")
    @@scenes[scene_name.to_sym] = scene_obj
  end

  def self.move_to(scene_name)
    p ("scene.rb-self.move_to/12")
    @@current_scene_name = scene_name.to_sym
  end

  def self.play(score)
    p ("scene.rb-self.play/17")
    @@scenes[@@current_scene_name].play(score)
  end
end

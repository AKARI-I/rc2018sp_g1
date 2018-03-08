class Scene
  @@scenes = {}

  @@current_scene_name = nil

  def self.add(scene_obj, scene_name)
    @@scenes[scene_name.to_sym] = scene_obj
  end

  def self.move_to(scene_name)
    @@current_scene_name = scene_name.to_sym
  end

  def self.play(score)
    @@scenes[@@current_scene_name].play(score)
  end
end

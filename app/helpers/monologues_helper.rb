module MonologuesHelper
  def choose_new_or_edit
    if action_name == 'new' || action_name == 'create'
      confirm_monologues_path
    elsif action_name == 'edit'
      monologue_path
    end
  end
end

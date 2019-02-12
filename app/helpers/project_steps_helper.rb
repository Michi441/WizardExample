module ProjectStepsHelper
  STEPS = %w(basic_info project_detail file_uploads preview)

  def project_step_model
    project_class = "Project::#{step.camelcase}".constantize rescue Project
    @project ||= project_class.find(params[:project_id])
  end

  def step
    # Filter for security reasons
    @step ||= STEPS.find {|a_step| a_step == params[:id].to_s.downcase}
  end
  alias current_step step

  def previous_step
    current_step_index = STEPS.index(step)
    previous_step_index = current_step_index-1
    previous_step_index < 0 ? nil : STEPS[previous_step_index]
  end

  def next_step
    current_step_index = STEPS.index(step)
    STEPS[current_step_index+1]
  end

  
  
  def edit_first_step_path
    edit_project_step_model_path(STEPS.first)
  end

  def edit_previous_step_path
    edit_project_step_model_path(previous_step)
  end

  def edit_next_step_path
    edit_project_step_model_path(next_step)
  end

  def edit_last_step_path
    edit_project_step_model_path(STEPS.last)
  end

  def edit_current_step_path
    edit_project_step_model_path(step)
  end

  def edit_project_step_model_path(step)
    edit_project_project_step_path(project_step_model, step)
  end
  
  def first_step_path
    project_step_model_path(STEPS.first)
  end

  def previous_step_path
    project_step_model_path(previous_step)
  end

  def next_step_path
    project_step_model_path(next_step)
  end

  def last_step_path
    project_step_model_path(STEPS.last)
  end

  def current_step_path
    project_step_model_path(step)
  end

  def project_step_model_path(step)
    project_project_step_path(project_step_model, step)
  end
  
  
  
  def edit_first_step_url
    edit_project_step_model_url(STEPS.first)
  end

  def edit_previous_step_url
    edit_project_step_model_url(previous_step)
  end

  def edit_next_step_url
    edit_project_step_model_url(next_step)
  end

  def edit_last_step_url
    edit_project_step_model_url(STEPS.last)
  end

  def edit_current_step_url
    edit_project_step_model_url(step)
  end

  def edit_project_step_model_url(step)
    edit_project_project_step_url(project_step_model, step)
  end
  
  def first_step_url
    project_step_model_url(STEPS.first)
  end

  def previous_step_url
    project_step_model_url(previous_step)
  end

  def next_step_url
    project_step_model_url(next_step)
  end

  def last_step_url
    project_step_model_url(STEPS.last)
  end

  def current_step_url
    project_step_model_url(step)
  end

  def project_step_model_url(step)
    project_project_step_url(project_step_model, step)
  end
  
  
end

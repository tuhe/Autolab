# frozen_string_literal: true

module GroupsHelper
  def groups_back_link
    if @cud.instructor
      link_to "Back", [@course, @assessment, :groups]
    else
      link_to "Back", current_assessment_path
    end
  end
end

class ApplicationController < ActionController::API
  def permit_model_params model_instance, params
    params.require(model_instance.name.downcase.to_sym)
      .permit(model_instance.column_names).except(:id, :created_at, :updated_at)
  end

  def validate_record record_instance
    if !record_instance.valid?
      render json: { errors: record_instance.errors.full_messages }, status: :bad_request
      return false
    end

    true
  end
end

class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def render_success(results, status)
    json_response = {
      :json => results,
      :include => include_params,
      :fields => transform(
        :key => :fields,
        :permitted_param_keys => allowed_resources
      ),
      :status => status
    }
    if results.present? && results.respond_to?(:to_a)
      json_response[:meta] = meta_attributes(results)
    end
    render json_response
  end

  def meta_attributes(res)
    data = {}.tap do |a|
      a[:page]        = res.current_page if res.respond_to?(:current_page)
      a[:per_page]    = res.limit_value  if res.respond_to?(:limit_value)
      a[:total_pages] = res.total_pages  if res.respond_to?(:total_pages)
      a[:total_count] = res.total_count  if res.respond_to?(:total_count)
    end

    data.transform_values(&:to_s)
  end

  private

  def include_params
    params[:include] || {}
  end

  def allowed_resources
    []
  end

  def transform(key:, permitted_param_keys:)
    params
      .fetch(key, {})
      .permit(permitted_param_keys)
      .transform_values { |v| v.split(',') }
      .to_h
  end
end

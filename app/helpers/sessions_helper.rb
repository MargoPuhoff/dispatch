module SessionsHelper
  def log_in(dispatcher)
    session[:dispatcher_id] = dispatcher.id
  end

  def current_dispatcher
    @current_dispatcher ||= Dispatcher.find_by(id: session[:dispatcher_id])
  end

  def logged_in?
    !current_dispatcher.nil?
  end

  def log_out
    session.delete(:dispatcher_id)
    @current_dispatcher = nil
  end
end

# frozen_string_literal: true

class MultiDnsCookieStore < ActionDispatch::Session::CookieStore
  # Add this method
  def cookie_key(request)
    case request.domain
    when 'montessori-lipetsk.ru' then :_montessori_lipetsk_session
    else @key
    end
  end

  # Overrides
  def set_cookie(request, _session_id, cookie)
    cookie_jar(request)[cookie_key(request)] = cookie
  end

  def get_cookie(req)
    cookie_jar(req)[cookie_key(req)]
  end
end

Rack::Session::Abstract::Persisted.class_eval do
  # Overrides
  def extract_session_id(request)
    key = cookie_key(request)
    sid = request.cookies[key]
    sid ||= request.params[key] unless @cookie_only
    sid
  end
end

MultiDns::Application.config.session_store MultiDnsCookieStore, key: '_multi_dns_session', domain: :all

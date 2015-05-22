module I18nHelper

  module_function

  def facebook_locale_code(all_locales, current_locale_code)
    locale_code_string = current_locale_code.to_s

    locale = all_locales.find { |l| l[:ident] == locale_code_string }

    if locale[:language].present? && locale[:region].present?
      "#{locale[:language].downcase}_#{locale[:region].upcase}"
    else
      nil
    end
  end
end

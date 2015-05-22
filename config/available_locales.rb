# coding: utf-8
module Sharetribe

  # Format: [name, identifier, language, region, fallback identifier]
  #
  # language format: ISO 639-1, two letters, lowercase
  # region format: ISO 3166, two letters, uppercase
  # fallbacks: should not include US English, which is a last default fallback for each language

  AVAILABLE_LOCALES = SUPPORTED_LOCALES.concat(UNSUPPORTED_LOCALES)
  WELL_TRANSLATED_LOCALES = SUPPORTED_LOCALES

  SUPPORTED_LOCALES = [
    {name: "English",             ident: "en",    language: "en", region: "US", fallback: nil     }, # English (United States)
    {name: "Français",            ident: "fr",    language: "fr", region: "FR", fallback: nil     }, # French (France)
    {name: "Español",             ident: "es-ES", language: "es", region: "ES", fallback: nil     }, # Spanish (Spain)
    {name: "Português do Brasil", ident: "pt-BR", language: "pt", region: "BR", fallback: nil     }, # Portuguese (Brazil)
    {name: "Norsk",               ident: "nb",    language: "nb", region: "NO", fallback: nil     }, # Norwegian Bokmål (Norway)
    {name: "Svenska",             ident: "sv",    language: "sv", region: "SE", fallback: nil     }, # Swedish (Sweden)
    {name: "Dansk",               ident: "da-DK", language: "da", region: "DK", fallback: nil     }, # Danish (Denmark)
    {name: "Suomi",               ident: "fi",    language: "fi", region: "FI", fallback: nil     }, # Finnish (Finland)
    {name: "Pусский",             ident: "ru",    language: "ru", region: "RU", fallback: nil     }, # Russian (Russia)
    {name: "Deutsch",             ident: "de",    language: "de", region: "DE", fallback: nil     }, # German (Germany)
    {name: "Ελληνικά",            ident: "el",    language: "el", region: "GR", fallback: nil     }, # Greek (Greece)
    {name: "Nederlands",          ident: "nl",    language: "nl", region: "NL", fallback: nil     }, # Dutch (Netherlands)
    {name: "Turkish",             ident: "tr-TR", language: "tr", region: "TR", fallback: nil     }, # Turkish (Turkey)
    {name: "中文",                ident: "zh",    language: "zh", region: "CN", fallback: nil     }, # Chinese (China)
    {name: "日本語",              ident: "ja",    language: "ja", region: "JP", fallback: nil     }, # Japanese (Japan)
    {name: "Italiano",            ident: "it",    language: "it", region: "IT", fallback: nil     }, # Italian (Italy)
  ]

  UNSUPPORTED_LOCALES = [
    {name: "English",             ident: "en-GB", language: "en", region: "GB", fallback: nil     }, # English (United Kingdom)
    {name: "English",             ident: "en-AU", language: "en", region: "AU", fallback: nil     }, # English (Australia)
    {name: "Kiswahili",           ident: "sw",    language: "sw", region: "KE", fallback: nil     }, # Swahili (Kenya)
    {name: "Română",              ident: "ro",    language: "ro", region: "RO", fallback: nil     }, # Romanian (Romania)
    {name: "Français",            ident: "fr-CA", language: "fr", region: "CA", fallback: "fr"    }, # French (Canada)
    {name: "Español",             ident: "es",    language: "es", region: "CL", fallback: "es-ES" }, # Spanish (Chile)
    {name: "Catalan",             ident: "ca",    language: "ca", region: "ES", fallback: nil     }, # Catalan (Spain)
    {name: "Tiếng Việt",          ident: "vi",    language: "vi", region: "VN", fallback: nil     }, # Vietnamese (Vietnam)
    {name: "Hrvatski",            ident: "hr",    language: "hr", region: "HR", fallback: nil     }, # Croatian (Croatia)
    {name: "Polski",              ident: "pl",    language: "pl", region: "PL", fallback: nil     }, # Polish (Poland)
    {name: "ភាសាខ្មែ",             ident: "km-KH", language: "km", region: "KH", fallback: nil     }, # Khmer (Cambodia)
    {name: "Bahasa Malaysia",     ident: "ms-MY", language: "ms", region: "MY", fallback: nil     }, # Malay (Malaysia)
    {name: "íslenska",            ident: "is",    language: "is", region: "IS", fallback: nil     }, # Icelandic (Iceland)
  ]

  REMOVED_LOCALE_FALLBACKS = {
    # removed 20.5.2015
    "de-bl" => "de",
    "de-rc" => "de",
    "en-bd" => "en",
    "en-bf" => "en",
    "en-bl" => "en",
    "en-cf" => "en",
    "en-rc" => "en",
    "en-sb" => "en",
    "en-ul" => "en",
    "en-un" => "en",
    "en-vg" => "en",
    "es-rc" => "es",
    "fr-bd" => "fr",
    "fr-rc" => "fr",

    # removed 21.5.2015
    "en-qr" => "en",
    "en-at" => "en",
    "fr-at" => "fr"
  }

  REMOVED_LOCALES = REMOVED_LOCALE_FALLBACKS.keys.to_set
end

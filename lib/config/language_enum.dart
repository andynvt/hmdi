import 'dart:ui';

enum LanguageEnum {
  ENGLISH,
  KOREAN,
}

LanguageEnum strToLanguageEnum(String str) {
  switch (str) {
    case 'ko':
      return LanguageEnum.KOREAN;
    default:
      return LanguageEnum.ENGLISH;
  }
}

String langToStr(LanguageEnum type) {
  switch (type) {
    case LanguageEnum.KOREAN:
      return 'ko';
    default:
      return 'en';
  }
}

Locale langToLocale(LanguageEnum type) {
  switch (type) {
    case LanguageEnum.KOREAN:
      return Locale('ko', 'KR');
    default:
      return Locale('en', 'US');
  }
}

// ignore_for_file: public_member_api_docs, constant_identifier_names

/// 날짜 & 시간 문자열 변환 형식 Enum
enum DateTimeStringFormat {
  YYYY, // Year
  MM, // Month
  DD, // Day
  hh, // Hour
  mm, // Minute
  ss, // Second
  YYYYMM, // Year & Month
  MMDD, // Month & Day
  YYYYMMDD, // Year & Month & Day
  MMDDYYYY, // Month & Day & Year
  DDMMYYYY, // Day & Month & Year
  hhmm, // Hour & Minute
  mmss, // Minute & Seconds
  hhmmss, // Hour & Minute & Seconds
  YYYYMMDD_hh, // Year & Month & Day & Hour
  YYYYMMDD_hhmm, // Year & Month & Day & Hour & Minute
  YYYYMMDD_hhmmss, // Year & Month & Day & Hour & Minute & Second
  MMDDYYYY_hh, // Month & Day & Year & Hour
  MMDDYYYY_hhmm, // Month & Day & Year & Hour & Minute
  MMDDYYYY_hhmmss, // Month & Day & Year & Hour & Minute & Second
  DDMMYYYY_hh, // Day & Month & Year & Hour
  DDMMYYYY_hhmm, // Day & Month & Year & Hour & Minute
  DDMMYYYY_hhmmss, // Day & Month & Year & Hour & Minute & Second
}

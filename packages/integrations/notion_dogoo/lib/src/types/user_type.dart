const String _person = 'person';
const String _bot = 'bot';

/// A representation of the type of a Notion user.
enum UserType {
  /// Human user.
  person,

  /// Automated user (bot).
  bot;

  /// Creates a [UserType] from a JSON string.
  static UserType fromJson(String value) {
    switch (value) {
      case _person:
        return UserType.person;
      case _bot:
        return UserType.bot;
      default:
        throw ArgumentError('Unknown UserType value: $value');
    }
  }

  /// Converts the [UserType] to a JSON string.
  String toJson() {
    switch (this) {
      case UserType.person:
        return _person;
      case UserType.bot:
        return _bot;
    }
  }
}

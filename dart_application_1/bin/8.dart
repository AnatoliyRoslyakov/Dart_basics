void main(List<String> args) {
  var userManager = UserManager<User>();

  final user = User('123vvva@mail.ru');
  final userList = [
    user,
    User('1@mail1.ru'),
    AdminUser('2@mail2.ru'),
    AdminUser('3@mail3.ru'),
    GeneralUser('4@mail4.ru')
  ];

  userManager.add(userList);
  //userManager.removeOne(user);

  print('Список адресов эл. почты: ${userManager.getEmails()}');
}

class User {
  String? email;
  User(this.email);
}

class AdminUser extends User with MailSystemChecker {
  AdminUser(String? email) : super(email);
}

class GeneralUser extends User {
  GeneralUser(String? email) : super(email);
}

mixin MailSystemChecker on User {
  String? getMailSystem() => email
      ?.split('@')
      .last; // возвращает значение из email,которое находится после @
}

class UserManager<T extends User> {
  Set<T> users = {};

  void addOne(T user) => users.add(user);

  void add(List<T> userList) => users.addAll(userList);

  void removeOne(T user) => users.remove(user);

  void remove(List<T> userList) => users..removeAll(userList);

  List<String> getEmails() {
    final List<String> emails = [];

    for (final user in users) {
      if (user.email != null) {
        if (user is AdminUser) {
          emails.add(user
              .getMailSystem()!); // если пользователь admin, будет выведено значение после @
        } else {
          emails.add(user.email!);
        }
      }
    }

    return emails;
  }
}

import 'package:shortpaper_dart/interfaces/EventNotifier.dart';

class Notifier {
  // Attributes
  List<EventNotifier> listeners = [];

  //Methods
  attach(EventNotifier e) {
    var isExist = listeners.contains(e);
    if (isExist) {
      return print("Subject: listeners has been attached");
    }
    print("Subject: Attached a listeners");
    listeners.add(e);
  }

  detach(EventNotifier e) {
    var listenerIndex = listeners.indexOf(e);
    if (listenerIndex == -1) {
      return print("Subject: Nonexistent observer");
    }

    listeners.sublist(listenerIndex, 1);
    print("Subject: Detached an Observer");
  }

  notify(data) {
    print("Subject: Notifying listeners...");
    for (var listener in listeners) {
      listener.update(data);
    }
  }
}

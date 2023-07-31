import 'dart:async';

class CountDownTimer {
  final Duration total;
  final Duration interval;

  final void Function(Duration) onTick;
  final void Function() onFinish;

  Timer? _periodicTimer;
  Timer? _completionTimer;

  CountDownTimer({
    required this.total,
    required this.interval,
    required this.onTick,
    required this.onFinish,
  });

  void start() {
    var endTime = DateTime.now().add(total);
    _periodicTimer = Timer.periodic(interval, (_) {
      var timeLeft = endTime.difference(DateTime.now());
      onTick(timeLeft);
    });
    _completionTimer = Timer(total, () {
      _periodicTimer!.cancel();
      onFinish();
    });
  }

  void cancel() {
    _periodicTimer?.cancel();
    _completionTimer?.cancel();
    print('counter cancel');
  }
}

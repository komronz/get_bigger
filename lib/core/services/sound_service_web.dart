// lib/core/services/sound_service_web.dart
// Web Audio API via dart:js_interop — no asset files needed.

import 'dart:js_interop';
import 'sound_service.dart';

// ── JS bindings ────────────────────────────────────────────────────────────

@JS('AudioContext')
extension type _AudioContext._(JSObject _) implements JSObject {
  external factory _AudioContext();
  external double get currentTime;
  external JSObject get destination;
  external _OscillatorNode createOscillator();
  external _GainNode createGain();
}

@JS()
extension type _OscillatorNode._(JSObject _) implements JSObject {
  external set type(String value);
  external _AudioParam get frequency;
  external void connect(JSObject destination);
  external void start(double when);
  external void stop(double when);
}

@JS()
extension type _GainNode._(JSObject _) implements JSObject {
  external _AudioParam get gain;
  external void connect(JSObject destination);
}

@JS()
extension type _AudioParam._(JSObject _) implements JSObject {
  external set value(double val);
  external void linearRampToValueAtTime(double value, double endTime);
}

// ── Implementation ─────────────────────────────────────────────────────────

class SoundServiceImpl implements SoundService {
  _AudioContext? _ctx;

  // Reuse one AudioContext — browsers limit simultaneous contexts.
  _AudioContext get _context => _ctx ??= _AudioContext();

  @override
  void playMerge() {
    _tone(523.25, 0.10, 0.10);
    _toneAfter(659.25, 0.07, 0.09, 70);
  }

  @override
  void playDiscover() {
    _tone(523.25, 0.12, 0.16);
    _toneAfter(659.25, 0.12, 0.14, 140);
    _toneAfter(783.99, 0.14, 0.22, 280);
  }

  @override
  void playGameOver() {
    _tone(311.13, 0.12, 0.28);
    _toneAfter(220.00, 0.12, 0.40, 220);
  }

  @override
  void playWin() {
    _tone(523.25, 0.12, 0.20);
    _toneAfter(659.25, 0.12, 0.20, 150);
    _toneAfter(783.99, 0.12, 0.20, 300);
    _toneAfter(1046.50, 0.14, 0.35, 450);
  }

  void _tone(double freq, double gainPeak, double duration) {
    try {
      final ctx = _context;
      final now = ctx.currentTime;

      final osc = ctx.createOscillator();
      final gain = ctx.createGain();

      osc.type = 'sine';
      osc.frequency.value = freq;
      gain.gain.value = 0.0;

      osc.connect(gain as JSObject);
      gain.connect(ctx.destination);

      osc.start(now);
      gain.gain.linearRampToValueAtTime(gainPeak, now + 0.018);
      gain.gain.linearRampToValueAtTime(0.0, now + duration);
      osc.stop(now + duration + 0.05);
    } catch (_) {
      // Browser may block audio until first user gesture — silently ignore.
    }
  }

  void _toneAfter(double freq, double gainPeak, double duration, int delayMs) {
    Future.delayed(
      Duration(milliseconds: delayMs),
      () => _tone(freq, gainPeak, duration),
    );
  }
}

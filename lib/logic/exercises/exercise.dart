import 'package:fitness_training_tracker/logic/exercises/hand_position/behind_head.dart';
import 'package:fitness_training_tracker/logic/exercises/hand_position/front.dart';
import 'package:fitness_training_tracker/logic/exercises/impl/door_pull.dart';
import 'package:fitness_training_tracker/logic/exercises/impl/lunge_backwards.dart';
import 'package:fitness_training_tracker/logic/exercises/impl/oblique_crunch.dart';
import 'package:fitness_training_tracker/logic/exercises/impl/push_up_high_hands.dart';
import 'package:fitness_training_tracker/logic/exercises/impl/reverse_bank_press.dart';
import 'package:fitness_training_tracker/logic/exercises/impl/romanian_deadlift.dart';
import 'package:fitness_training_tracker/logic/exercises/impl/side_lunge.dart';
import 'package:fitness_training_tracker/logic/exercises/impl/starfish.dart';
import 'package:fitness_training_tracker/logic/exercises/impl/swimmer.dart';
import 'package:fitness_training_tracker/logic/exercises/impl/tight_squat.dart';

abstract class Exercise {
  String getDiscription();
  String getName();

  static List<Exercise> getImpelemented() {
    return [
      DoorPull(),
      LungeBackwards(),
      ObliqueCrunch(),
      PushUpHighHands(),
      ReverseBankPress(),
      RomanianDeadlift(),
      SideLunge(),
      Starfish(),
      Swimmer(),
      TightSquat(handPosition: FrontHandPosition()),
      TightSquat(handPosition: BehindHeadHandPosition()),
    ];
  }
}

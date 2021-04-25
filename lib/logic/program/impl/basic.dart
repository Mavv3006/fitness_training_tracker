import 'package:fitness_training_tracker/logic/exercises/hand_position/behind_head.dart';
import 'package:fitness_training_tracker/logic/exercises/hand_position/front.dart';
import 'package:fitness_training_tracker/logic/program/program.dart';
import 'package:fitness_training_tracker/logic/training/program_selection/training_day.dart';
import 'package:fitness_training_tracker/logic/training/program_selection/training_week.dart';
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

class BasicProgram extends Program {
  static List<TrainingWeek> _weeks = [
    TrainingWeek(
      numbers: {1, 2},
      days: {
        1: TrainingDay(
          exercises: [
            PushUpHighHands(),
            DoorPull(),
            Starfish(),
            ReverseBankPress(),
          ],
        ),
        2: TrainingDay(
          exercises: [
            LungeBackwards(),
            RomanianDeadlift(),
            TightSquat(handPosition: FrontHandPosition()),
            Swimmer()
          ],
        ),
        3: TrainingDay(
          exercises: [
            PushUpHighHands(),
            DoorPull(),
            Starfish(),
            ReverseBankPress(),
          ],
        ),
        4: TrainingDay(
          exercises: [
            SideLunge(),
            RomanianDeadlift(),
            TightSquat(
              handPosition: BehindHeadHandPosition(),
              timing: "1-3 Sek. Haltezeit am tiefsten Punkt",
            ),
            ObliqueCrunch()
          ],
        ),
      },
    ),
  ];

  @override
  String getName() {
    return "Basic Program";
  }

  @override
  List<TrainingWeek> getWeeks() {
    return BasicProgram._weeks;
  }
}

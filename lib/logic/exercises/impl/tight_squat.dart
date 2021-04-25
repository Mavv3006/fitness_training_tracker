import 'package:fitness_training_tracker/logic/exercises/exercise.dart';
import 'package:fitness_training_tracker/logic/exercises/hand_position/hand_position.dart';

class TightSquat extends Exercise {
  HandPosition handPosition;
  String? timing;

  TightSquat({required this.handPosition, this.timing});

  @override
  String getDiscription() {
    // TODO: implement getDiscription
    throw UnimplementedError();
  }

  @override
  String getName() {
    String result = "Enge Kniebeuge (${handPosition.getName()})";
    if (timing != null) result += timing!;
    return result;
  }
}

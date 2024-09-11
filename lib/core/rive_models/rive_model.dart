
import 'package:rive/rive.dart';

class RiveModel {
  final String artBoard;
  final String stateMachineName;
  final String src;
  late SMIBool? status;

  RiveModel({
    required this.artBoard,
    required this.stateMachineName,
    required this.src,
    this.status,
  });
  set setStatus(SMIBool state){
    status = state;
  }
}
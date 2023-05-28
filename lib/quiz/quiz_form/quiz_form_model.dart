import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/pages/button/button_widget.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class QuizFormModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this component.

  // State field(s) for QuestionInput widget.
  TextEditingController? questionInputController;
  String? Function(BuildContext, String?)? questionInputControllerValidator;
  // State field(s) for Answer1Input widget.
  TextEditingController? answer1InputController;
  String? Function(BuildContext, String?)? answer1InputControllerValidator;
  // State field(s) for Answer2Input widget.
  TextEditingController? answer2InputController;
  String? Function(BuildContext, String?)? answer2InputControllerValidator;
  // State field(s) for Answer3Input widget.
  TextEditingController? answer3InputController;
  String? Function(BuildContext, String?)? answer3InputControllerValidator;
  // State field(s) for DropDownCorrectAnswer widget.
  String? dropDownCorrectAnswerValue;
  FormFieldController<String>? dropDownCorrectAnswerValueController;
  // Model for button component.
  late ButtonModel buttonModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    buttonModel = createModel(context, () => ButtonModel());
  }

  void dispose() {
    questionInputController?.dispose();
    answer1InputController?.dispose();
    answer2InputController?.dispose();
    answer3InputController?.dispose();
    buttonModel.dispose();
  }

  /// Additional helper methods are added here.

}

import '/backend/supabase/supabase.dart';
import '/components/button_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class UsersCoursesFormModel extends FlutterFlowModel {
  ///  Local state fields for this component.

  String? imageUploadedPath;

  int role = 0;

  ///  State fields for stateful widgets in this component.

  // State field(s) for CourseIdInput widget.
  TextEditingController? courseIdInputController;
  String? Function(BuildContext, String?)? courseIdInputControllerValidator;
  // Model for button component.
  late ButtonModel buttonModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    buttonModel = createModel(context, () => ButtonModel());
  }

  void dispose() {
    courseIdInputController?.dispose();
    buttonModel.dispose();
  }

  /// Additional helper methods are added here.

}

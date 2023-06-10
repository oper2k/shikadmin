import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/interview/interview/interview_widget.dart';
import '/interview/interview_form/interview_form_widget.dart';
import '/pages/nav_menu/nav_menu_widget.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:aligned_dialog/aligned_dialog.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class InterviewsModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for navMenu component.
  late NavMenuModel navMenuModel;
  // State field(s) for SearchInput widget.
  TextEditingController? searchInputController;
  String? Function(BuildContext, String?)? searchInputControllerValidator;
  // Models for interview dynamic component.
  late FlutterFlowDynamicModels<InterviewModel> interviewModels1;
  // Models for interview dynamic component.
  late FlutterFlowDynamicModels<InterviewModel> interviewModels2;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    navMenuModel = createModel(context, () => NavMenuModel());
    interviewModels1 = FlutterFlowDynamicModels(() => InterviewModel());
    interviewModels2 = FlutterFlowDynamicModels(() => InterviewModel());
  }

  void dispose() {
    unfocusNode.dispose();
    navMenuModel.dispose();
    searchInputController?.dispose();
    interviewModels1.dispose();
    interviewModels2.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.

}

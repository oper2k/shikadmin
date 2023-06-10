import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/nav_menu/nav_menu_widget.dart';
import '/pages/search/search_widget.dart';
import '/quiz/quiz_compo/quiz_compo_widget.dart';
import '/quiz/quiz_form/quiz_form_widget.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:aligned_dialog/aligned_dialog.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class QuizModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for navMenu component.
  late NavMenuModel navMenuModel;
  // Model for search component.
  late SearchModel searchModel;
  // Models for quizCompo dynamic component.
  late FlutterFlowDynamicModels<QuizCompoModel> quizCompoModels1;
  // Models for quizCompo dynamic component.
  late FlutterFlowDynamicModels<QuizCompoModel> quizCompoModels2;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    navMenuModel = createModel(context, () => NavMenuModel());
    searchModel = createModel(context, () => SearchModel());
    quizCompoModels1 = FlutterFlowDynamicModels(() => QuizCompoModel());
    quizCompoModels2 = FlutterFlowDynamicModels(() => QuizCompoModel());
  }

  void dispose() {
    unfocusNode.dispose();
    navMenuModel.dispose();
    searchModel.dispose();
    quizCompoModels1.dispose();
    quizCompoModels2.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.

}

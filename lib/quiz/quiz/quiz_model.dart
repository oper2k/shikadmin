import '/components/search_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/nav_menu/nav_menu_widget.dart';
import '/quiz/quiz_compo/quiz_compo_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class QuizModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // Model for navMenu component.
  late NavMenuModel navMenuModel;
  // Model for search component.
  late SearchModel searchModel;
  // Model for quizCompo component.
  late QuizCompoModel quizCompoModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    navMenuModel = createModel(context, () => NavMenuModel());
    searchModel = createModel(context, () => SearchModel());
    quizCompoModel = createModel(context, () => QuizCompoModel());
  }

  void dispose() {
    navMenuModel.dispose();
    searchModel.dispose();
    quizCompoModel.dispose();
  }

  /// Additional helper methods are added here.

}

import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/nav_menu/nav_menu_widget.dart';
import '/pages/search/search_widget.dart';
import '/school/school_compo/school_compo_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SchoolsModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // Model for navMenu component.
  late NavMenuModel navMenuModel;
  // Model for search component.
  late SearchModel searchModel;
  // Models for schoolCompo dynamic component.
  late FlutterFlowDynamicModels<SchoolCompoModel> schoolCompoModels;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    navMenuModel = createModel(context, () => NavMenuModel());
    searchModel = createModel(context, () => SearchModel());
    schoolCompoModels = FlutterFlowDynamicModels(() => SchoolCompoModel());
  }

  void dispose() {
    navMenuModel.dispose();
    searchModel.dispose();
    schoolCompoModels.dispose();
  }

  /// Additional helper methods are added here.

}

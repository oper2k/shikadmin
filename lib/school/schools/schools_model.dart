import '/components/search_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/nav_menu/nav_menu_widget.dart';
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
  // Model for schoolCompo component.
  late SchoolCompoModel schoolCompoModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    navMenuModel = createModel(context, () => NavMenuModel());
    searchModel = createModel(context, () => SearchModel());
    schoolCompoModel = createModel(context, () => SchoolCompoModel());
  }

  void dispose() {
    navMenuModel.dispose();
    searchModel.dispose();
    schoolCompoModel.dispose();
  }

  /// Additional helper methods are added here.

}

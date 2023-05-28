import '/backend/supabase/supabase.dart';
import '/components/search_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/nav_menu/nav_menu_widget.dart';
import '/users/user/user_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class UsersModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // Model for navMenu component.
  late NavMenuModel navMenuModel;
  // Model for search component.
  late SearchModel searchModel;
  // Models for user dynamic component.
  late FlutterFlowDynamicModels<UserModel> userModels;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    navMenuModel = createModel(context, () => NavMenuModel());
    searchModel = createModel(context, () => SearchModel());
    userModels = FlutterFlowDynamicModels(() => UserModel());
  }

  void dispose() {
    navMenuModel.dispose();
    searchModel.dispose();
    userModels.dispose();
  }

  /// Additional helper methods are added here.

}

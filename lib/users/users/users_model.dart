import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/nav_menu/nav_menu_widget.dart';
import '/pages/search/search_widget.dart';
import '/users/user/user_widget.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class UsersModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for navMenu component.
  late NavMenuModel navMenuModel;
  // Model for search component.
  late SearchModel searchModel;
  // Models for user dynamic component.
  late FlutterFlowDynamicModels<UserModel> userModels1;
  // Models for user dynamic component.
  late FlutterFlowDynamicModels<UserModel> userModels2;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    navMenuModel = createModel(context, () => NavMenuModel());
    searchModel = createModel(context, () => SearchModel());
    userModels1 = FlutterFlowDynamicModels(() => UserModel());
    userModels2 = FlutterFlowDynamicModels(() => UserModel());
  }

  void dispose() {
    unfocusNode.dispose();
    navMenuModel.dispose();
    searchModel.dispose();
    userModels1.dispose();
    userModels2.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.

}

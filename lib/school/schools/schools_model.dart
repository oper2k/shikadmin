import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/nav_menu/nav_menu_widget.dart';
import '/school/school_compo/school_compo_widget.dart';
import '/school/school_form/school_form_widget.dart';
import 'package:aligned_dialog/aligned_dialog.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SchoolsModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for navMenu component.
  late NavMenuModel navMenuModel;
  // State field(s) for searchfield widget.
  TextEditingController? searchfieldController;
  String? Function(BuildContext, String?)? searchfieldControllerValidator;
  // Models for schoolCompo dynamic component.
  late FlutterFlowDynamicModels<SchoolCompoModel> schoolCompoModels;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    navMenuModel = createModel(context, () => NavMenuModel());
    schoolCompoModels = FlutterFlowDynamicModels(() => SchoolCompoModel());
  }

  void dispose() {
    unfocusNode.dispose();
    navMenuModel.dispose();
    searchfieldController?.dispose();
    schoolCompoModels.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.

}

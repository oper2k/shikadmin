import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/login_access_failure/login_access_failure_widget.dart';
import '/pages/login_access_success/login_access_success_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class LoginAccessCheckModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // Model for loginAccessSuccess component.
  late LoginAccessSuccessModel loginAccessSuccessModel;
  // Model for loginAccessFailure component.
  late LoginAccessFailureModel loginAccessFailureModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    loginAccessSuccessModel =
        createModel(context, () => LoginAccessSuccessModel());
    loginAccessFailureModel =
        createModel(context, () => LoginAccessFailureModel());
  }

  void dispose() {
    loginAccessSuccessModel.dispose();
    loginAccessFailureModel.dispose();
  }

  /// Additional helper methods are added here.

}

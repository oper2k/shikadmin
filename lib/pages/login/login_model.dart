import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/button/button_widget.dart';
import '/pages/login_access_failure/login_access_failure_widget.dart';
import '/pages/login_access_success/login_access_success_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class LoginModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for EmailInput widget.
  TextEditingController? emailInputController;
  String? Function(BuildContext, String?)? emailInputControllerValidator;
  // State field(s) for PasswordInput widget.
  TextEditingController? passwordInputController;
  late bool passwordInputVisibility;
  String? Function(BuildContext, String?)? passwordInputControllerValidator;
  // Model for button component.
  late ButtonModel buttonModel;
  // Model for loginAccessSuccess component.
  late LoginAccessSuccessModel loginAccessSuccessModel;
  // Model for loginAccessFailure component.
  late LoginAccessFailureModel loginAccessFailureModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    passwordInputVisibility = false;
    buttonModel = createModel(context, () => ButtonModel());
    loginAccessSuccessModel =
        createModel(context, () => LoginAccessSuccessModel());
    loginAccessFailureModel =
        createModel(context, () => LoginAccessFailureModel());
  }

  void dispose() {
    unfocusNode.dispose();
    emailInputController?.dispose();
    passwordInputController?.dispose();
    buttonModel.dispose();
    loginAccessSuccessModel.dispose();
    loginAccessFailureModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.

}

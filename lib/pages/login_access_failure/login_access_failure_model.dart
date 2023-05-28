import '/auth/supabase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/button/button_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class LoginAccessFailureModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this component.

  // Model for button component.
  late ButtonModel buttonModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    buttonModel = createModel(context, () => ButtonModel());
  }

  void dispose() {
    buttonModel.dispose();
  }

  /// Additional helper methods are added here.

}

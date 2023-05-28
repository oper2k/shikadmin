import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SearchModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this component.

  // State field(s) for searchfield widget.
  TextEditingController? searchfieldController;
  String? Function(BuildContext, String?)? searchfieldControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    searchfieldController?.dispose();
  }

  /// Additional helper methods are added here.

}

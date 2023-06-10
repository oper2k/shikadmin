import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/button/button_widget.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class FactsFormModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this component.

  // State field(s) for HeaderInput widget.
  TextEditingController? headerInputController;
  String? Function(BuildContext, String?)? headerInputControllerValidator;
  // State field(s) for TextInput widget.
  TextEditingController? textInputController;
  String? Function(BuildContext, String?)? textInputControllerValidator;
  // State field(s) for PictureLinkInput widget.
  TextEditingController? pictureLinkInputController;
  String? Function(BuildContext, String?)? pictureLinkInputControllerValidator;
  // State field(s) for PreviewLinkInput widget.
  TextEditingController? previewLinkInputController;
  String? Function(BuildContext, String?)? previewLinkInputControllerValidator;
  // Model for button component.
  late ButtonModel buttonModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    buttonModel = createModel(context, () => ButtonModel());
  }

  void dispose() {
    headerInputController?.dispose();
    textInputController?.dispose();
    pictureLinkInputController?.dispose();
    previewLinkInputController?.dispose();
    buttonModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.

}

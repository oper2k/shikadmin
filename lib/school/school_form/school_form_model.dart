import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/button/button_widget.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:provider/provider.dart';

class SchoolFormModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this component.

  // State field(s) for HeroInput widget.
  TextEditingController? heroInputController;
  String? Function(BuildContext, String?)? heroInputControllerValidator;
  // State field(s) for IntroductionInput widget.
  TextEditingController? introductionInputController;
  final introductionInputMask = MaskTextInputFormatter(mask: '##.##.####');
  String? Function(BuildContext, String?)? introductionInputControllerValidator;
  // State field(s) for SpecialityInput widget.
  TextEditingController? specialityInputController1;
  String? Function(BuildContext, String?)? specialityInputController1Validator;
  // State field(s) for SpecialityInput widget.
  TextEditingController? specialityInputController2;
  String? Function(BuildContext, String?)? specialityInputController2Validator;
  // State field(s) for SpecialityInput widget.
  TextEditingController? specialityInputController3;
  String? Function(BuildContext, String?)? specialityInputController3Validator;
  // State field(s) for SpecialityInput widget.
  TextEditingController? specialityInputController4;
  String? Function(BuildContext, String?)? specialityInputController4Validator;
  // Model for button component.
  late ButtonModel buttonModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    buttonModel = createModel(context, () => ButtonModel());
  }

  void dispose() {
    heroInputController?.dispose();
    introductionInputController?.dispose();
    specialityInputController1?.dispose();
    specialityInputController2?.dispose();
    specialityInputController3?.dispose();
    specialityInputController4?.dispose();
    buttonModel.dispose();
  }

  /// Additional helper methods are added here.

}

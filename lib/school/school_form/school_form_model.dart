import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/pages/button/button_widget.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SchoolFormModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this component.

  // State field(s) for SchoolNameInput widget.
  TextEditingController? schoolNameInputController;
  String? Function(BuildContext, String?)? schoolNameInputControllerValidator;
  // State field(s) for AdressInput widget.
  TextEditingController? adressInputController;
  String? Function(BuildContext, String?)? adressInputControllerValidator;
  // State field(s) for PhoneInput widget.
  TextEditingController? phoneInputController;
  String? Function(BuildContext, String?)? phoneInputControllerValidator;
  // State field(s) for EmailInput widget.
  TextEditingController? emailInputController;
  String? Function(BuildContext, String?)? emailInputControllerValidator;
  // State field(s) for DropDownCategory widget.
  String? dropDownCategoryValue;
  FormFieldController<String>? dropDownCategoryValueController;
  // State field(s) for DropDownProfession widget.
  String? dropDownProfessionValue;
  FormFieldController<String>? dropDownProfessionValueController;
  // Model for button component.
  late ButtonModel buttonModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    buttonModel = createModel(context, () => ButtonModel());
  }

  void dispose() {
    schoolNameInputController?.dispose();
    adressInputController?.dispose();
    phoneInputController?.dispose();
    emailInputController?.dispose();
    buttonModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.

}

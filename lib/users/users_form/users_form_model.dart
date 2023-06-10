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
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:provider/provider.dart';

class UsersFormModel extends FlutterFlowModel {
  ///  Local state fields for this component.

  String? imageUploadedPath;

  int role = 0;

  ///  State fields for stateful widgets in this component.

  // State field(s) for NameInput widget.
  TextEditingController? nameInputController;
  String? Function(BuildContext, String?)? nameInputControllerValidator;
  // State field(s) for BirthDateInput widget.
  TextEditingController? birthDateInputController;
  final birthDateInputMask = MaskTextInputFormatter(mask: '##.##.####');
  String? Function(BuildContext, String?)? birthDateInputControllerValidator;
  // State field(s) for RatingInput widget.
  TextEditingController? ratingInputController;
  String? Function(BuildContext, String?)? ratingInputControllerValidator;
  // State field(s) for DropDownArtDirection widget.
  String? dropDownArtDirectionValue;
  FormFieldController<String>? dropDownArtDirectionValueController;
  // State field(s) for DropDownKnowledgeLevel widget.
  String? dropDownKnowledgeLevelValue;
  FormFieldController<String>? dropDownKnowledgeLevelValueController;
  // Model for button component.
  late ButtonModel buttonModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    buttonModel = createModel(context, () => ButtonModel());
  }

  void dispose() {
    nameInputController?.dispose();
    birthDateInputController?.dispose();
    ratingInputController?.dispose();
    buttonModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.

}

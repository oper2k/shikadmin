import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/upload_data.dart';
import '/pages/button/button_widget.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class InterviewFormModel extends FlutterFlowModel {
  ///  Local state fields for this component.

  String? imageUploadedPath;

  ///  State fields for stateful widgets in this component.

  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for InterviewHeroInput widget.
  TextEditingController? interviewHeroInputController;
  String? Function(BuildContext, String?)?
      interviewHeroInputControllerValidator;
  // State field(s) for SpecialityInput widget.
  TextEditingController? specialityInputController;
  String? Function(BuildContext, String?)? specialityInputControllerValidator;
  // State field(s) for QuoteInput widget.
  TextEditingController? quoteInputController;
  String? Function(BuildContext, String?)? quoteInputControllerValidator;
  // State field(s) for InterviewUrlInput widget.
  TextEditingController? interviewUrlInputController;
  String? Function(BuildContext, String?)? interviewUrlInputControllerValidator;
  // State field(s) for IntroductionInput widget.
  TextEditingController? introductionInputController;
  String? Function(BuildContext, String?)? introductionInputControllerValidator;
  // State field(s) for MainPartField widget.
  TextEditingController? mainPartFieldController;
  String? Function(BuildContext, String?)? mainPartFieldControllerValidator;
  // Model for button component.
  late ButtonModel buttonModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    buttonModel = createModel(context, () => ButtonModel());
  }

  void dispose() {
    interviewHeroInputController?.dispose();
    specialityInputController?.dispose();
    quoteInputController?.dispose();
    interviewUrlInputController?.dispose();
    introductionInputController?.dispose();
    mainPartFieldController?.dispose();
    buttonModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.

}

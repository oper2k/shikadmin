import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/button/button_widget.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:provider/provider.dart';

class InterviewFormNewModel extends FlutterFlowModel {
  ///  Local state fields for this component.

  String? imageUploadedPath;

  ///  State fields for stateful widgets in this component.

  // State field(s) for InterviewHeroInput widget.
  TextEditingController? interviewHeroInputController;
  String? Function(BuildContext, String?)?
      interviewHeroInputControllerValidator;
  // State field(s) for IntroductionInput widget.
  TextEditingController? introductionInputController;
  final introductionInputMask = MaskTextInputFormatter(mask: '##.##.####');
  String? Function(BuildContext, String?)? introductionInputControllerValidator;
  // State field(s) for SpecialityInput widget.
  TextEditingController? specialityInputController;
  String? Function(BuildContext, String?)? specialityInputControllerValidator;
  // State field(s) for QuoteInput widget.
  TextEditingController? quoteInputController;
  String? Function(BuildContext, String?)? quoteInputControllerValidator;
  // State field(s) for BasePartInput widget.
  TextEditingController? basePartInputController;
  String? Function(BuildContext, String?)? basePartInputControllerValidator;
  // State field(s) for LinkInterviewInput widget.
  TextEditingController? linkInterviewInputController;
  String? Function(BuildContext, String?)?
      linkInterviewInputControllerValidator;
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
    interviewHeroInputController?.dispose();
    introductionInputController?.dispose();
    specialityInputController?.dispose();
    quoteInputController?.dispose();
    basePartInputController?.dispose();
    linkInterviewInputController?.dispose();
    pictureLinkInputController?.dispose();
    previewLinkInputController?.dispose();
    buttonModel.dispose();
  }

  /// Additional helper methods are added here.

}

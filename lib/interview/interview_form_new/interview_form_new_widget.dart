import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/button/button_widget.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:provider/provider.dart';
import 'interview_form_new_model.dart';
export 'interview_form_new_model.dart';

class InterviewFormNewWidget extends StatefulWidget {
  const InterviewFormNewWidget({
    Key? key,
    required this.feedInterviewRow,
  }) : super(key: key);

  final FeedInterviewRow? feedInterviewRow;

  @override
  _InterviewFormNewWidgetState createState() => _InterviewFormNewWidgetState();
}

class _InterviewFormNewWidgetState extends State<InterviewFormNewWidget> {
  late InterviewFormNewModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => InterviewFormNewModel());

    _model.interviewHeroInputController ??= TextEditingController();
    _model.introductionInputController ??= TextEditingController();
    _model.specialityInputController ??= TextEditingController();
    _model.quoteInputController ??= TextEditingController();
    _model.basePartInputController ??= TextEditingController();
    _model.linkInterviewInputController ??= TextEditingController();
    _model.pictureLinkInputController ??= TextEditingController();
    _model.previewLinkInputController ??= TextEditingController();
    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Align(
      alignment: AlignmentDirectional(0.0, 0.0),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(0.0, 60.0, 0.0, 60.0),
        child: Container(
          width: 600.0,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).primaryBackground,
            boxShadow: [
              BoxShadow(
                blurRadius: 6.0,
                color: Color(0x1A000000),
                offset: Offset(0.0, 0.0),
              )
            ],
            borderRadius: BorderRadius.circular(12.0),
            border: Border.all(
              color: Color(0x0B000000),
            ),
          ),
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(24.0, 24.0, 24.0, 24.0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        child: Align(
                          alignment: AlignmentDirectional(0.0, 0.0),
                          child: Text(
                            'Редактировать запись пользователя',
                            style:
                                FlutterFlowTheme.of(context).bodyLarge.override(
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.w600,
                                    ),
                          ),
                        ),
                      ),
                      InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          Navigator.pop(context);
                        },
                        child: Icon(
                          Icons.close,
                          color: FlutterFlowTheme.of(context).secondaryText,
                          size: 24.0,
                        ),
                      ),
                    ],
                  ),
                  Align(
                    alignment: AlignmentDirectional(0.05, 0.0),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 24.0, 0.0, 0.0),
                      child: Container(
                        width: 200.0,
                        height: 100.0,
                        child: Stack(
                          children: [
                            Align(
                              alignment: AlignmentDirectional(0.0, 0.0),
                              child: Container(
                                width: 200.0,
                                height: 100.0,
                                decoration: BoxDecoration(
                                  color:
                                      FlutterFlowTheme.of(context).notActiveBtn,
                                  borderRadius: BorderRadius.circular(16.0),
                                  shape: BoxShape.rectangle,
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(8.0),
                                  child: Image.network(
                                    'https://picsum.photos/seed/87/600',
                                    width: double.infinity,
                                    height: double.infinity,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                            Align(
                              alignment: AlignmentDirectional(1.0, -1.0),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 12.0, 12.0, 0.0),
                                child: Container(
                                  width: 40.0,
                                  height: 40.0,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context).primary,
                                    shape: BoxShape.circle,
                                  ),
                                  child: Icon(
                                    FFIcons.kfluentEdit16Regular,
                                    color: FlutterFlowTheme.of(context).success,
                                    size: 24.0,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 24.0, 0.0, 0.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 6.0,
                            color: Color(0x41EFEFEF),
                            offset: Offset(0.0, 0.0),
                          )
                        ],
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      child: TextFormField(
                        controller: _model.interviewHeroInputController,
                        onChanged: (_) => EasyDebounce.debounce(
                          '_model.interviewHeroInputController',
                          Duration(milliseconds: 500),
                          () => setState(() {}),
                        ),
                        obscureText: false,
                        decoration: InputDecoration(
                          labelText: 'Герой интервью',
                          labelStyle:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.normal,
                                  ),
                          hintStyle: FlutterFlowTheme.of(context).labelMedium,
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x00000000),
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x00000000),
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x00000000),
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                          focusedErrorBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x00000000),
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                          contentPadding: EdgeInsetsDirectional.fromSTEB(
                              20.0, 0.0, 0.0, 0.0),
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Inter',
                              fontSize: 16.0,
                              fontWeight: FontWeight.normal,
                            ),
                        validator: _model.interviewHeroInputControllerValidator
                            .asValidator(context),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 0.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 6.0,
                            color: Color(0x41EFEFEF),
                            offset: Offset(0.0, 0.0),
                          )
                        ],
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      child: TextFormField(
                        controller: _model.introductionInputController,
                        onChanged: (_) => EasyDebounce.debounce(
                          '_model.introductionInputController',
                          Duration(milliseconds: 500),
                          () => setState(() {}),
                        ),
                        obscureText: false,
                        decoration: InputDecoration(
                          labelText: 'Вступление',
                          labelStyle:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.normal,
                                  ),
                          hintStyle: FlutterFlowTheme.of(context).labelMedium,
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x00000000),
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x00000000),
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x00000000),
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                          focusedErrorBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x00000000),
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                          contentPadding: EdgeInsetsDirectional.fromSTEB(
                              20.0, 0.0, 0.0, 0.0),
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Inter',
                              fontSize: 16.0,
                              fontWeight: FontWeight.normal,
                            ),
                        keyboardType: TextInputType.number,
                        validator: _model.introductionInputControllerValidator
                            .asValidator(context),
                        inputFormatters: [_model.introductionInputMask],
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 0.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 6.0,
                            color: Color(0x41EFEFEF),
                            offset: Offset(0.0, 0.0),
                          )
                        ],
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      child: TextFormField(
                        controller: _model.specialityInputController,
                        onChanged: (_) => EasyDebounce.debounce(
                          '_model.specialityInputController',
                          Duration(milliseconds: 500),
                          () => setState(() {}),
                        ),
                        obscureText: false,
                        decoration: InputDecoration(
                          labelText: 'Специальность',
                          labelStyle:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.normal,
                                  ),
                          hintStyle: FlutterFlowTheme.of(context).labelMedium,
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x00000000),
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x00000000),
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                          errorBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x00000000),
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                          focusedErrorBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x00000000),
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                          contentPadding: EdgeInsetsDirectional.fromSTEB(
                              20.0, 0.0, 0.0, 0.0),
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Inter',
                              fontSize: 16.0,
                              fontWeight: FontWeight.normal,
                            ),
                        keyboardType: TextInputType.number,
                        validator: _model.specialityInputControllerValidator
                            .asValidator(context),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 0.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 6.0,
                            color: Color(0x41EFEFEF),
                            offset: Offset(0.0, 0.0),
                          )
                        ],
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      child: TextFormField(
                        controller: _model.quoteInputController,
                        onChanged: (_) => EasyDebounce.debounce(
                          '_model.quoteInputController',
                          Duration(milliseconds: 500),
                          () => setState(() {}),
                        ),
                        obscureText: false,
                        decoration: InputDecoration(
                          labelText: 'Цитата',
                          labelStyle:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.normal,
                                  ),
                          hintStyle: FlutterFlowTheme.of(context).labelMedium,
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x00000000),
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x00000000),
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                          errorBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x00000000),
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                          focusedErrorBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x00000000),
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                          contentPadding: EdgeInsetsDirectional.fromSTEB(
                              20.0, 0.0, 0.0, 0.0),
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Inter',
                              fontSize: 16.0,
                              fontWeight: FontWeight.normal,
                            ),
                        keyboardType: TextInputType.number,
                        validator: _model.quoteInputControllerValidator
                            .asValidator(context),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 0.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 6.0,
                            color: Color(0x41EFEFEF),
                            offset: Offset(0.0, 0.0),
                          )
                        ],
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      child: TextFormField(
                        controller: _model.basePartInputController,
                        onChanged: (_) => EasyDebounce.debounce(
                          '_model.basePartInputController',
                          Duration(milliseconds: 500),
                          () => setState(() {}),
                        ),
                        obscureText: false,
                        decoration: InputDecoration(
                          labelText: 'Основная часть',
                          labelStyle:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.normal,
                                  ),
                          hintStyle: FlutterFlowTheme.of(context).labelMedium,
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x00000000),
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x00000000),
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                          errorBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x00000000),
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                          focusedErrorBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x00000000),
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                          contentPadding: EdgeInsetsDirectional.fromSTEB(
                              20.0, 0.0, 0.0, 0.0),
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Inter',
                              fontSize: 16.0,
                              fontWeight: FontWeight.normal,
                            ),
                        keyboardType: TextInputType.number,
                        validator: _model.basePartInputControllerValidator
                            .asValidator(context),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 0.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 6.0,
                            color: Color(0x41EFEFEF),
                            offset: Offset(0.0, 0.0),
                          )
                        ],
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      child: TextFormField(
                        controller: _model.linkInterviewInputController,
                        onChanged: (_) => EasyDebounce.debounce(
                          '_model.linkInterviewInputController',
                          Duration(milliseconds: 500),
                          () => setState(() {}),
                        ),
                        obscureText: false,
                        decoration: InputDecoration(
                          labelText: 'Ссылка на интервью',
                          labelStyle:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.normal,
                                  ),
                          hintStyle: FlutterFlowTheme.of(context).labelMedium,
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x00000000),
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x00000000),
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                          errorBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x00000000),
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                          focusedErrorBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x00000000),
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                          contentPadding: EdgeInsetsDirectional.fromSTEB(
                              20.0, 0.0, 0.0, 0.0),
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Inter',
                              fontSize: 16.0,
                              fontWeight: FontWeight.normal,
                            ),
                        keyboardType: TextInputType.number,
                        validator: _model.linkInterviewInputControllerValidator
                            .asValidator(context),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 0.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 6.0,
                            color: Color(0x41EFEFEF),
                            offset: Offset(0.0, 0.0),
                          )
                        ],
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      child: TextFormField(
                        controller: _model.pictureLinkInputController,
                        onChanged: (_) => EasyDebounce.debounce(
                          '_model.pictureLinkInputController',
                          Duration(milliseconds: 500),
                          () => setState(() {}),
                        ),
                        obscureText: false,
                        decoration: InputDecoration(
                          labelText: 'Ссылка изображения',
                          labelStyle:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.normal,
                                  ),
                          hintStyle: FlutterFlowTheme.of(context).labelMedium,
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x00000000),
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x00000000),
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                          errorBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x00000000),
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                          focusedErrorBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x00000000),
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                          contentPadding: EdgeInsetsDirectional.fromSTEB(
                              20.0, 0.0, 0.0, 0.0),
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Inter',
                              fontSize: 16.0,
                              fontWeight: FontWeight.normal,
                            ),
                        keyboardType: TextInputType.number,
                        validator: _model.pictureLinkInputControllerValidator
                            .asValidator(context),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 0.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 6.0,
                            color: Color(0x41EFEFEF),
                            offset: Offset(0.0, 0.0),
                          )
                        ],
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      child: TextFormField(
                        controller: _model.previewLinkInputController,
                        onChanged: (_) => EasyDebounce.debounce(
                          '_model.previewLinkInputController',
                          Duration(milliseconds: 500),
                          () => setState(() {}),
                        ),
                        obscureText: false,
                        decoration: InputDecoration(
                          labelText: 'Ссылка превью',
                          labelStyle:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.normal,
                                  ),
                          hintStyle: FlutterFlowTheme.of(context).labelMedium,
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x00000000),
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x00000000),
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                          errorBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x00000000),
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                          focusedErrorBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x00000000),
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                          contentPadding: EdgeInsetsDirectional.fromSTEB(
                              20.0, 0.0, 0.0, 0.0),
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Inter',
                              fontSize: 16.0,
                              fontWeight: FontWeight.normal,
                            ),
                        keyboardType: TextInputType.number,
                        validator: _model.previewLinkInputControllerValidator
                            .asValidator(context),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(96.0, 24.0, 96.0, 0.0),
                    child: wrapWithModel(
                      model: _model.buttonModel,
                      updateCallback: () => setState(() {}),
                      child: ButtonWidget(
                        text: 'Сохранить',
                        isActive: false,
                        btnColor: FlutterFlowTheme.of(context).greenActive,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

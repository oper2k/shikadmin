import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/pages/button/button_widget.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'quiz_form_model.dart';
export 'quiz_form_model.dart';

class QuizFormWidget extends StatefulWidget {
  const QuizFormWidget({
    Key? key,
    this.feedQuizzesRow,
  }) : super(key: key);

  final FeedQuizzesRow? feedQuizzesRow;

  @override
  _QuizFormWidgetState createState() => _QuizFormWidgetState();
}

class _QuizFormWidgetState extends State<QuizFormWidget> {
  late QuizFormModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => QuizFormModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      if (widget.feedQuizzesRow != null) {
        setState(() {
          _model.questionInputController?.text =
              widget.feedQuizzesRow!.question!;
        });
        setState(() {
          _model.answer1InputController?.text = widget.feedQuizzesRow!.answer1!;
        });
        setState(() {
          _model.answer2InputController?.text = widget.feedQuizzesRow!.answer2!;
        });
        setState(() {
          _model.answer3InputController?.text = widget.feedQuizzesRow!.answer3!;
        });
        setState(() {
          _model.dropDownCorrectAnswerValueController?.value =
              widget.feedQuizzesRow!.correctAnswer!.toString();
        });
      } else {
        return;
      }
    });

    _model.questionInputController ??= TextEditingController();
    _model.answer1InputController ??= TextEditingController();
    _model.answer2InputController ??= TextEditingController();
    _model.answer3InputController ??= TextEditingController();
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
                            'Квиз',
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
                        controller: _model.questionInputController,
                        onChanged: (_) => EasyDebounce.debounce(
                          '_model.questionInputController',
                          Duration(milliseconds: 500),
                          () => setState(() {}),
                        ),
                        obscureText: false,
                        decoration: InputDecoration(
                          labelText: 'Ваш вопрос',
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
                        validator: _model.questionInputControllerValidator
                            .asValidator(context),
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
                        controller: _model.answer1InputController,
                        onChanged: (_) => EasyDebounce.debounce(
                          '_model.answer1InputController',
                          Duration(milliseconds: 500),
                          () => setState(() {}),
                        ),
                        obscureText: false,
                        decoration: InputDecoration(
                          labelText: 'Вариант 1',
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
                        validator: _model.answer1InputControllerValidator
                            .asValidator(context),
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
                        controller: _model.answer2InputController,
                        onChanged: (_) => EasyDebounce.debounce(
                          '_model.answer2InputController',
                          Duration(milliseconds: 500),
                          () => setState(() {}),
                        ),
                        obscureText: false,
                        decoration: InputDecoration(
                          labelText: 'Вариант 2',
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
                        validator: _model.answer2InputControllerValidator
                            .asValidator(context),
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
                        controller: _model.answer3InputController,
                        onChanged: (_) => EasyDebounce.debounce(
                          '_model.answer3InputController',
                          Duration(milliseconds: 500),
                          () => setState(() {}),
                        ),
                        obscureText: false,
                        decoration: InputDecoration(
                          labelText: 'Вариант 3',
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
                        validator: _model.answer3InputControllerValidator
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
                      child: FlutterFlowDropDown<String>(
                        controller:
                            _model.dropDownCorrectAnswerValueController ??=
                                FormFieldController<String>(
                          _model.dropDownCorrectAnswerValue ??= '',
                        ),
                        options: ['1', '2', '3'],
                        optionLabels: ['Вариант 1', 'Вариант 2', 'Вариант 3'],
                        onChanged: (val) => setState(
                            () => _model.dropDownCorrectAnswerValue = val),
                        width: double.infinity,
                        height: 50.0,
                        searchHintTextStyle:
                            FlutterFlowTheme.of(context).labelMedium,
                        textStyle:
                            FlutterFlowTheme.of(context).bodyMedium.override(
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.normal,
                                ),
                        hintText: 'Номер правильного ответа',
                        searchHintText: 'Search for an item...',
                        icon: Icon(
                          Icons.keyboard_arrow_down_rounded,
                          color: Color(0xB2404041),
                          size: 24.0,
                        ),
                        fillColor:
                            FlutterFlowTheme.of(context).secondaryBackground,
                        elevation: 2.0,
                        borderColor: Colors.transparent,
                        borderWidth: 2.0,
                        borderRadius: 12.0,
                        margin: EdgeInsetsDirectional.fromSTEB(
                            16.0, 4.0, 16.0, 4.0),
                        hidesUnderline: true,
                        isSearchable: false,
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(96.0, 24.0, 96.0, 0.0),
                    child: InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        if (widget.feedQuizzesRow != null) {
                          await FeedQuizzesTable().update(
                            data: {
                              'question': _model.questionInputController.text,
                              'answer_1': _model.answer1InputController.text,
                              'answer_2': _model.answer2InputController.text,
                              'answer_3': _model.answer3InputController.text,
                              'correct_answer': functions.convertStringToInt(
                                  _model.dropDownCorrectAnswerValue),
                            },
                            matchingRows: (rows) => rows.eq(
                              'id',
                              widget.feedQuizzesRow?.id,
                            ),
                          );
                        } else {
                          await FeedQuizzesTable().insert({
                            'question': _model.questionInputController.text,
                            'answer_1': _model.answer1InputController.text,
                            'answer_2': _model.answer2InputController.text,
                            'answer_3': _model.answer3InputController.text,
                            'correct_answer': functions.convertStringToInt(
                                _model.dropDownCorrectAnswerValue),
                          });
                        }

                        Navigator.pop(context);
                      },
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

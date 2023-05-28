import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/interview/interview_form/interview_form_widget.dart';
import 'package:aligned_dialog/aligned_dialog.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'interview_model.dart';
export 'interview_model.dart';

class InterviewWidget extends StatefulWidget {
  const InterviewWidget({
    Key? key,
    required this.feedInterviewRow,
  }) : super(key: key);

  final FeedInterviewRow? feedInterviewRow;

  @override
  _InterviewWidgetState createState() => _InterviewWidgetState();
}

class _InterviewWidgetState extends State<InterviewWidget> {
  late InterviewModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => InterviewModel());

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

    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 12.0),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).primaryBackground,
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(32.0, 32.0, 32.0, 32.0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          'ID интервью : ',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Inter',
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                        ),
                        Text(
                          valueOrDefault<String>(
                            widget.feedInterviewRow?.id?.toString(),
                            'null',
                          ),
                          style: FlutterFlowTheme.of(context).bodyMedium,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Text(
                          'Дата создания: ',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Inter',
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                        ),
                        Text(
                          valueOrDefault<String>(
                            dateTimeFormat(
                              'yMMMd',
                              widget.feedInterviewRow?.createdAt,
                              locale: FFLocalizations.of(context).languageCode,
                            ),
                            'null',
                          ),
                          style: FlutterFlowTheme.of(context).bodyMedium,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Text(
                          'Участник интервью: ',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Inter',
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                        ),
                        Text(
                          valueOrDefault<String>(
                            widget.feedInterviewRow?.interviewHero,
                            'null',
                          ),
                          style: FlutterFlowTheme.of(context).bodyMedium,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Text(
                          'Вступление: ',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Inter',
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              valueOrDefault<String>(
                                widget.feedInterviewRow?.introduction,
                                'null',
                              ),
                              style: FlutterFlowTheme.of(context).bodyMedium,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Text(
                          'Специальность: ',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Inter',
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              valueOrDefault<String>(
                                widget.feedInterviewRow?.speciality,
                                'null',
                              ),
                              style: FlutterFlowTheme.of(context).bodyMedium,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Text(
                          'Цитата: ',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Inter',
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              valueOrDefault<String>(
                                widget.feedInterviewRow?.quote,
                                'null',
                              ),
                              style: FlutterFlowTheme.of(context).bodyMedium,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Text(
                          'Изображение: ',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Inter',
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                        ),
                        Text(
                          valueOrDefault<String>(
                            widget.feedInterviewRow?.imageUrl,
                            'null',
                          ),
                          style: FlutterFlowTheme.of(context).bodyMedium,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Text(
                          'Основная часть: ',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Inter',
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              valueOrDefault<String>(
                                widget.feedInterviewRow?.mainPart,
                                'null',
                              ),
                              style: FlutterFlowTheme.of(context).bodyMedium,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Text(
                          'Ссылка на интервью: ',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Inter',
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                        ),
                        Text(
                          valueOrDefault<String>(
                            widget.feedInterviewRow?.interviewUrl,
                            'null',
                          ),
                          style: FlutterFlowTheme.of(context).bodyMedium,
                        ),
                      ],
                    ),
                  ),
                  Builder(
                    builder: (context) => Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 24.0, 0.0, 0.0),
                      child: InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          await showAlignedDialog(
                            context: context,
                            isGlobal: true,
                            avoidOverflow: false,
                            targetAnchor: Alignment(0.0, 0.0),
                            followerAnchor: Alignment(0.0, 0.0),
                            builder: (dialogContext) {
                              return Material(
                                color: Colors.transparent,
                                child: InterviewFormWidget(
                                  feedInterviewRow: widget.feedInterviewRow,
                                ),
                              );
                            },
                          ).then((value) => setState(() {}));
                        },
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              'Редактировать ',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Inter',
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                            ),
                            Container(
                              width: 40.0,
                              height: 40.0,
                              decoration: BoxDecoration(),
                              child: Align(
                                alignment: AlignmentDirectional(0.0, 0.0),
                                child: Icon(
                                  FFIcons.kfluentEdit16Regular,
                                  color: FlutterFlowTheme.of(context).black,
                                  size: 24.0,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                width: 300.0,
                height: 200.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).backBg,
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.network(
                    valueOrDefault<String>(
                      widget.feedInterviewRow?.imageUrl,
                      '0',
                    ),
                    width: 300.0,
                    height: 200.0,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

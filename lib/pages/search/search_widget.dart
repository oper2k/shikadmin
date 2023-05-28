import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'search_model.dart';
export 'search_model.dart';

class SearchWidget extends StatefulWidget {
  const SearchWidget({Key? key}) : super(key: key);

  @override
  _SearchWidgetState createState() => _SearchWidgetState();
}

class _SearchWidgetState extends State<SearchWidget> {
  late SearchModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SearchModel());

    _model.searchfieldController ??= TextEditingController();
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

    return Row(
      mainAxisSize: MainAxisSize.max,
      children: [
        Container(
          width: 500.0,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).secondaryBackground,
            borderRadius: BorderRadius.circular(12.0),
          ),
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 0.0, 0.0),
            child: Container(
              width: 500.0,
              child: TextFormField(
                controller: _model.searchfieldController,
                onChanged: (_) => EasyDebounce.debounce(
                  '_model.searchfieldController',
                  Duration(milliseconds: 500),
                  () => setState(() {}),
                ),
                obscureText: false,
                decoration: InputDecoration(
                  labelStyle: FlutterFlowTheme.of(context).bodyLarge,
                  hintText: 'Поиск...',
                  hintStyle: FlutterFlowTheme.of(context).bodyLarge.override(
                        fontFamily: 'Inter',
                        color: FlutterFlowTheme.of(context).accent2,
                      ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0x09000000),
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
                  filled: true,
                  fillColor: FlutterFlowTheme.of(context).primaryBackground,
                  contentPadding:
                      EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 0.0, 0.0),
                  prefixIcon: Icon(
                    Icons.search_rounded,
                    color: FlutterFlowTheme.of(context).accent2,
                    size: 30.0,
                  ),
                ),
                style: FlutterFlowTheme.of(context).bodyLarge,
                validator:
                    _model.searchfieldControllerValidator.asValidator(context),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

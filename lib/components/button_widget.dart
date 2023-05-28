import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'button_model.dart';
export 'button_model.dart';

class ButtonWidget extends StatefulWidget {
  const ButtonWidget({
    Key? key,
    this.text,
    bool? isActive,
    this.btnColor,
  })  : this.isActive = isActive ?? false,
        super(key: key);

  final String? text;
  final bool isActive;
  final Color? btnColor;

  @override
  _ButtonWidgetState createState() => _ButtonWidgetState();
}

class _ButtonWidgetState extends State<ButtonWidget> {
  late ButtonModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ButtonModel());

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

    return Container(
      width: double.infinity,
      height: 52.0,
      decoration: BoxDecoration(
        color: widget.btnColor,
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Align(
        alignment: AlignmentDirectional(0.0, 0.0),
        child: Text(
          widget.text!,
          style: FlutterFlowTheme.of(context).headlineSmall.override(
                fontFamily: 'Inter',
                color: FlutterFlowTheme.of(context).secondaryBackground,
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
              ),
        ),
      ),
    );
  }
}

import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/login_access_failure/login_access_failure_widget.dart';
import '/pages/login_access_success/login_access_success_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'login_access_check_model.dart';
export 'login_access_check_model.dart';

class LoginAccessCheckWidget extends StatefulWidget {
  const LoginAccessCheckWidget({Key? key}) : super(key: key);

  @override
  _LoginAccessCheckWidgetState createState() => _LoginAccessCheckWidgetState();
}

class _LoginAccessCheckWidgetState extends State<LoginAccessCheckWidget> {
  late LoginAccessCheckModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LoginAccessCheckModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    _unfocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
      child: Scaffold(
        key: scaffoldKey,
        body: Align(
          alignment: AlignmentDirectional(0.0, 0.0),
          child: Container(
            constraints: BoxConstraints(
              maxWidth: 800.0,
            ),
            decoration: BoxDecoration(),
            child: Stack(
              children: [
                Align(
                  alignment: AlignmentDirectional(1.0, -1.0),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 110.0, 80.0, 0.0),
                    child: Container(
                      width: 300.0,
                      height: 300.0,
                      decoration: BoxDecoration(
                        color: Color(0xFFD6CEE4),
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(0.0, -1.0),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 330.0, 0.0, 0.0),
                    child: Text(
                      'Школа Искусств',
                      style:
                          FlutterFlowTheme.of(context).headlineMedium.override(
                                fontFamily: 'Inter',
                                fontSize: 35.0,
                                fontWeight: FontWeight.bold,
                              ),
                    ),
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(0.0, -1.0),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 100.0, 0.0, 0.0),
                    child: Image.asset(
                      'assets/images/head.webp',
                      height: 240.0,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                if (currentUserUid != null && currentUserUid != '')
                  FutureBuilder<List<UsersRow>>(
                    future: UsersTable().querySingleRow(
                      queryFn: (q) => q.eq(
                        'id',
                        currentUserUid,
                      ),
                    ),
                    builder: (context, snapshot) {
                      // Customize what your widget looks like when it's loading.
                      if (!snapshot.hasData) {
                        return Center(
                          child: SizedBox(
                            width: 50.0,
                            height: 50.0,
                            child: CircularProgressIndicator(
                              color: FlutterFlowTheme.of(context).primary,
                            ),
                          ),
                        );
                      }
                      List<UsersRow> usersQueryUsersRowList = snapshot.data!;
                      final usersQueryUsersRow =
                          usersQueryUsersRowList.isNotEmpty
                              ? usersQueryUsersRowList.first
                              : null;
                      return Container(
                        width: double.infinity,
                        decoration: BoxDecoration(),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            if (usersQueryUsersRow!.role! > 0)
                              wrapWithModel(
                                model: _model.loginAccessSuccessModel,
                                updateCallback: () => setState(() {}),
                                child: LoginAccessSuccessWidget(),
                              ),
                            if (usersQueryUsersRow?.role == 0)
                              wrapWithModel(
                                model: _model.loginAccessFailureModel,
                                updateCallback: () => setState(() {}),
                                child: LoginAccessFailureWidget(),
                              ),
                          ],
                        ),
                      );
                    },
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

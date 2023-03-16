import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'recipe_details_a_p_i_model.dart';
export 'recipe_details_a_p_i_model.dart';

class RecipeDetailsAPIWidget extends StatefulWidget {
  const RecipeDetailsAPIWidget({
    Key? key,
    this.recipeDetailsAPI,
  }) : super(key: key);

  final dynamic recipeDetailsAPI;

  @override
  _RecipeDetailsAPIWidgetState createState() => _RecipeDetailsAPIWidgetState();
}

class _RecipeDetailsAPIWidgetState extends State<RecipeDetailsAPIWidget> {
  late RecipeDetailsAPIModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => RecipeDetailsAPIModel());
  }

  @override
  void dispose() {
    _model.dispose();

    _unfocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).primaryColor,
        automaticallyImplyLeading: false,
        leading: FlutterFlowIconButton(
          borderColor: Colors.transparent,
          borderRadius: 30.0,
          borderWidth: 1.0,
          buttonSize: 60.0,
          icon: Icon(
            Icons.arrow_back_rounded,
            color: Colors.white,
            size: 30.0,
          ),
          onPressed: () async {
            context.pop();
          },
        ),
        title: Text(
          'Page Title',
          style: FlutterFlowTheme.of(context).title2.override(
                fontFamily: 'Poppins',
                color: Colors.white,
                fontSize: 22.0,
              ),
        ),
        actions: [],
        centerTitle: false,
        elevation: 2.0,
      ),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Builder(
                builder: (context) {
                  final ingredientLines = getJsonField(
                    widget.recipeDetailsAPI,
                    r'''$.ingredientLines''',
                  ).toList();
                  return ListView.builder(
                    padding: EdgeInsets.zero,
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    itemCount: ingredientLines.length,
                    itemBuilder: (context, ingredientLinesIndex) {
                      final ingredientLinesItem =
                          ingredientLines[ingredientLinesIndex];
                      return Text(
                        ingredientLinesItem.toString(),
                        style: FlutterFlowTheme.of(context).bodyText1,
                      );
                    },
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';

import 'package:nigiru_kun/viewmodels/record_tab_view_mode.dart';
import 'package:nigiru_kun/ui/widget/charts/bar_times_chart.dart';
import 'package:nigiru_kun/utils/color.dart';

class RecordTab extends StatelessWidget {
  final RecordTabViewModel viewModel;

  RecordTab(this.viewModel);

  @override
  Widget build(BuildContext context) {
    return ScopedModel<RecordTabViewModel>(
      model: viewModel,
      child: ScopedModelDescendant<RecordTabViewModel>(
          builder: (context, child, model) => SingleChildScrollView(
                  child: Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 30.0,
                  horizontal: 20.0,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'HOMEモード',
                      style: TextStyle(
                        fontSize: 32.0,
                        color: CustomColors.primaryColor,
                      ),
                    ),
                    Container(
                      height: 200.0,
                      margin: EdgeInsets.only(bottom: 20.0),
                      child: BarTimesChart(model.homeSeriesList),
                    ),
                    Text(
                      'Challengeモード',
                      style: TextStyle(
                        fontSize: 32.0,
                        color: CustomColors.secondaryColor,
                      ),
                    ),
                  ],
                ),
              ))),
    );
  }
}

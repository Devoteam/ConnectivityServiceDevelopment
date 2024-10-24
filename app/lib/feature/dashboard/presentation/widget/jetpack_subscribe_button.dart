import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../jetpack/SubscribeViewModel.dart';

/*
  This widget implements a second version of the subscribe button, in which you
  set the State of `SubscribeViewModel._active` via the method called below.
  You then can pull that state everywhere you need to.
*/
class JetpackSubscribeButton extends StatelessWidget {

  const JetpackSubscribeButton({
    super.key
  });

  @override
  Widget build(BuildContext context) {
    final SubscribeButtonViewModel viewModel = context.viewModel();

    return ElevatedButton(
      style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
      onPressed: viewModel.setActive,
      child: Text(AppLocalizations.of(context)!.subscribe,
          style: TextStyle(
            color: Colors.white,
          )),
    );
  }
}

import 'package:flutter/widgets.dart';

class FormSection extends StatelessWidget {
  const FormSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(child: Text('data'));
  }
}

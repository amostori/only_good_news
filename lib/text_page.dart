import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:only_good_news/text_cubit/text_cubit.dart';

class TextPage extends StatelessWidget {
  const TextPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: BlocBuilder<TextCubit, TextState>(
          builder: (context, state) {
            if (state is TextInitial) {
              return ElevatedButton(
                onPressed: () {
                  context.read<TextCubit>().showNewText();
                },
                child: const Text('Click'),
              );
            } else if (state is TextLoading) {
              return const Center(child: CircularProgressIndicator());
            } else {
              return const Text('Completed');
            }
          },
        ),
      ),
    );
  }
}

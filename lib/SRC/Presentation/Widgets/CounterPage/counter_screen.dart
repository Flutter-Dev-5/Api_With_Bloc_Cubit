import 'package:block_pratice/SRC/Application/Utils/Extension/sized_box_extension.dart';
import 'package:block_pratice/SRC/Presentation/Widgets/CounterPage/Cubit/new_counter_cubit.dart';
import 'package:block_pratice/imports.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterScreen extends StatelessWidget {
  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          BlocBuilder<NewCounterCubit, NewCounterState>(
              builder: (context, counterValue) {
            if (counterValue is NewCounterInitial) {
              return Center(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: 20.radiusAllCircular,
                  ),
                  child: Text(
                    counterValue.counterValueOfNew.toString(),
                    style: Theme.of(context).textTheme.displayLarge,
                  ),
                ),
              );
            } else {
              return Center(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: 20.radiusAllCircular,
                  ),
                  child: Text(
                    "Welcome",
                    style: Theme.of(context).textTheme.displayLarge,
                  ),
                ),
              );
            }
          }),
          80.h,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                  onPressed: () {
                    context.read<NewCounterCubit>().incrementCounterValue();
                  },
                  icon: Icon(
                    Icons.add,
                    color: Theme.of(context).colorScheme.primary,
                    size: 52,
                  )),
              IconButton(
                  onPressed: () {
                    context.read<NewCounterCubit>().decrementCounterValue();
                  },
                  icon: Icon(
                    Icons.minimize_outlined,
                    color: Theme.of(context).colorScheme.primary,
                    size: 52,
                  ))
            ],
          )
        ],
      ),
    );
  }
}

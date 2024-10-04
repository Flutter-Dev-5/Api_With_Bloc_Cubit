import 'package:block_pratice/SRC/Application/Utils/Extension/sized_box_extension.dart';
import 'package:block_pratice/SRC/Data/CityNames/cities_names.dart';
import 'package:block_pratice/SRC/Presentation/Widgets/HomePage/Cubit/counter_cubit.dart';
import 'package:block_pratice/imports.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final TextEditingController searchCity = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            AppTheme.toggleTheme();
          },
          child: Icon(
            Icons.add,
            color: Theme.of(context).colorScheme.onPrimary,
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadiusExtension.radiusAll(20),
                    border: Border.all(
                        color: Theme.of(context).colorScheme.primary)),
                child: Center(child: const Text("Welcome").paddingLeft(20)),
              ).paddingHorizontal(20),
              50.h,
              BlocBuilder<CounterCubitClass, CounterValue>(
                  builder: (context, index) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    IconButton(
                        onPressed: () {
                          context.read<CounterCubitClass>().increment();
                        },
                        icon: const Icon(
                          Icons.add,
                        )),
                    Text(index.count.toString()),
                    IconButton(
                        onPressed: () {
                          context.read<CounterCubitClass>().decrement();
                        },
                        icon: const Icon(Icons.minimize)),
                  ],
                );
              }),
              TextFormField(
                controller: searchCity,
                onChanged: (val) {
                  context.read<CitiesCubit>().search(val);
                },
              ).paddingHorizontal(20),
              BlocBuilder<CitiesCubit, CityState>(builder: (context, blocVal) {
                if (blocVal is InitialCityState) {
                  return SizedBox(
                    height: 600,
                    child: ListView.builder(
                        itemCount: blocVal.city.length,
                        itemBuilder: (context, index) {
                          return ListTile(
                            title: Text(
                                CitiesNames.cities[index]['city'].toString()),
                          );
                        }),
                  );
                } else if (blocVal is FilteredCityState) {
                  return SizedBox(
                    height: 600,
                    child: ListView.builder(
                        itemCount: blocVal.cities.length,
                        itemBuilder: (context, index) {
                          return ListTile(
                            title:
                                Text(blocVal.cities[index]['city'].toString()),
                          );
                        }),
                  );
                }
                return Container();
              })
            ],
          ),
        ));
  }
}

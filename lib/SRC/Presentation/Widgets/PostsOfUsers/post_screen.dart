import 'package:block_pratice/SRC/Application/Utils/Extension/sized_box_extension.dart';
import 'package:block_pratice/SRC/Presentation/Widgets/PostsOfUsers/Cubits/Fetch/fetch_api_cubit.dart';
import 'package:block_pratice/imports.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PostScreen extends StatelessWidget {
  const PostScreen({super.key});

  /// the Api Link
  /// https://jsonplaceholder.typicode.com/users

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    const url = "https://jsonplaceholder.typicode.com/users";
    return Scaffold(
      body: Wrap(
        children: [
          Text(
            "ALL Posts Of Users",
            style: theme.textTheme.displayLarge!.copyWith(fontSize: 40),
          ),
          BlocBuilder<FetchApiCubit, FetchApiState>(
              builder: (context, userValue) {
            if (userValue is FetchApiLoading) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            } else if (userValue is FetchApiLoaded) {
              final data = userValue.response.data;
              if (data != null) {
                return SizedBox(
                    height: 700,
                    child: ListView.builder(
                        itemCount: data.length,
                        itemBuilder: (context, index) {
                          final user = data[index]; // Access each user map
                          return Card(
                              color: Colors.white38,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("ID: ${user.id}"),
                                  Text("Name: ${user.name}"),
                                  Text("User Name: ${user.username}"),
                                  Text("Email: ${user.email}"),
                                  Text("Contact Number: ${user.phone}"),
                                  Text("Address: ${user.address!.city}"),
                                  Text("Website: ${user.website}"),
                                  Text("Company: ${user.company!.name}"),
                                ],
                              ).paddingHorizontal(20));
                        }));
              }
            } else if (userValue is FetchApiError) {
              return Center(
                child: Text("Error ${userValue.errors}"),
              );
            }
            return Center(
              child: ElevatedButton(
                  onPressed: () {
                    context.read<FetchApiCubit>().fetchData(url);
                  },
                  child: const Text("Load Data")),
            );
          }),
          40.h,
        ],
      ).paddingTop(20).paddingHorizontal(10).paddingBottom(
            20,
          ),
    );
  }
}

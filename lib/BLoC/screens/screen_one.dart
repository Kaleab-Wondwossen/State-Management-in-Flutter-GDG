import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:statemanagement/BLoC/blocs/bloc.dart';
import 'package:statemanagement/BLoC/events/event.dart';
import 'package:statemanagement/BLoC/states/state.dart';

class CounterScreen extends StatelessWidget {
  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('BLoC Counter & Login')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Counter Section
            BlocBuilder<CounterBloc, CounterState>(
              builder: (context, state) {
                return Text('Count: ${state.count}');
              },
            ),
            const SizedBox(height: 20),

            // Username Field
            TextField(
              decoration: const InputDecoration(
                labelText: 'Username',
                border: OutlineInputBorder(),
              ),
              onChanged: (value) {
                context.read<CounterBloc>().add(UpdateUsernameEvent(value));
              },
            ),
            const SizedBox(height: 20),

            // Password Field
            BlocBuilder<CounterBloc, CounterState>(
              builder: (context, state) {
                return TextField(
                  decoration: InputDecoration(
                    labelText: 'Password',
                    border: const OutlineInputBorder(),
                    suffixIcon: IconButton(
                      icon: Icon(
                        state.isPasswordVisible
                            ? Icons.visibility
                            : Icons.visibility_off,
                      ),
                      onPressed: () {
                        context.read<CounterBloc>().add(TogglePasswordVisibilityEvent());
                      },
                    ),
                  ),
                  obscureText: !state.isPasswordVisible,
                  onChanged: (value) {
                    context.read<CounterBloc>().add(UpdatePasswordEvent(value));
                  },
                );
              },
            ),
            const SizedBox(height: 20),

            // Display Username and Password
            BlocBuilder<CounterBloc, CounterState>(
              builder: (context, state) {
                return Column(
                  children: [
                    Text('Username: ${state.username}'),
                    Text('Password: ${state.password}'),
                  ],
                );
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.read<CounterBloc>().add(IncrementEvent());
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
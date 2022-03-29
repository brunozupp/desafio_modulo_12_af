import 'package:desafio_modulo_12_af/main.dart';
import 'package:flutter/material.dart';

class SearchView extends StatefulWidget {
  const SearchView({ Key? key }) : super(key: key);

  @override
  State<SearchView> createState() => _SearchViewState();
}

class _SearchViewState extends State<SearchView> {

  final GlobalKey<FormState> _key = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Search"),
        actions: [
          IconButton(
            onPressed: () {
              themeStore.toggleTheme();
            }, 
            icon: const Icon(
              Icons.add_box_outlined,
              size: 30,
            ),
          ),
        ],  
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Form(
          key: _key,
          child: Column(
            children: [
              TextFormField(
                decoration: const InputDecoration(
                  labelText: "Email",
                  suffixIcon: Icon(
                    Icons.engineering
                  ),
                ),
                validator: (value) {
                  if(value == null || value.isEmpty) {
                    return "Obrigatório";
                  }

                  return null;
                },
              ),

              const SizedBox(
                height: 20,
              ),

              TextFormField(
                decoration: const InputDecoration(
                  labelText: "Senha",
                  prefixIcon: Icon(
                    Icons.engineering,
                    color: Colors.orange,
                  ),
                ),
                validator: (value) {
                  if(value == null || value.isEmpty) {
                    return "Obrigatório";
                  }

                  return null;
                },
              ),

              const SizedBox(
                height: 20,
              ),

              ElevatedButton(
                onPressed: () {
                  _key.currentState?.validate();
                }, 
                child: const Text(
                  "VALIDAR"
                )
              ),

              const SizedBox(
                height: 20,
              ),

              const ElevatedButton(
                onPressed: null,
                child: Text(
                  "DISABLED"
                )
              ),
            ],
          )
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';

class RegisterDetails extends StatefulWidget {
  const RegisterDetails({super.key});

  @override
  RegisterDetailsState createState() => RegisterDetailsState();
}

class RegisterDetailsState extends State<RegisterDetails> {
  late TextEditingController firstNameController;
  late TextEditingController lastNameController;
  late FocusNode firstNameFocusNode;
  late FocusNode lastNameFocusNode ;

  @override
  void initState() {
    super.initState();
    firstNameController = TextEditingController();
    lastNameController = TextEditingController();
    firstNameFocusNode = FocusNode();
    lastNameFocusNode = FocusNode();
  }

  @override
  void dispose() {
    firstNameController.dispose();
    firstNameFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(24, 0, 24, 36),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        TextFormField(
                          controller: firstNameController,
                          focusNode: firstNameFocusNode,
                          obscureText: false,
                          decoration: InputDecoration(
                            labelText: 'First Name',
                            hintText: 'Enter your first name here...',
                            enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: Color.fromARGB(255, 0, 0, 0),
                                width: 1,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: Color.fromARGB(0, 154, 129, 129),
                                width: 1,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            errorBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: Color(0x00000000),
                                width: 1,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            focusedErrorBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: Color(0x00000000),
                                width: 1,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            filled: true,
                            fillColor: Colors.black,
                          ),
                          keyboardType: TextInputType.text,
                          validator: (value) => value == null || value.isEmpty
                              ? 'Please enter your first name'
                              : null,
                        ),
                        Padding(
                          padding:
                              const EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                          child: TextFormField(
                            controller: lastNameController,
                            focusNode: lastNameFocusNode,
                            keyboardType: TextInputType.name,
                            validator: (value) {
                              return value == null || value.isEmpty
                                  ? "Please enter your last name"
                                  : null;
                            },
                            decoration: InputDecoration(
                              hintText: "Enter your last name...",
                              labelText: "Last Name",
                              filled: true,
                              fillColor: Colors.yellow,
                              enabledBorder: const OutlineInputBorder(
                                  borderSide: BorderSide(
                                width: 1,
                                color: Colors.black,
                              )),
                              focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Color(0x00000000),
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              errorBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Color(0x00000000),
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              focusedErrorBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Color(0x00000000),
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

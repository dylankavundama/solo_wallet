import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:solo_wallet/constants/style.dart';
import 'package:solo_wallet/screens/navigationButton_bar.dart';

// ignore: camel_case_types
class Create_account extends StatefulWidget {
  const Create_account({super.key});

  @override
  State<Create_account> createState() => _Create_accountState();
}

// ignore: camel_case_types
class _Create_accountState extends State<Create_account> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 60),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Solo wallet',
              style: TitreStyle,
            ),
            Image.asset(
                height: MediaQuery.of(context).size.height * 0.2,
                width: 600,
                'assets/reg.avif'),
            Text(
              'Create a PIN',
              style: TitreStyle,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                textField(
                  textHint: "Enter your 4 digits PIN ",
                  controller: null,
                  icon: Icons.key,
                  isName: true,
                ),
                textField(
                  textHint: "Confirm your PIN ",
                  controller: null,
                  icon: Icons.key,
                  isName: true,
                ),
                textField(
                  textHint: "Pseudo ",
                  controller: null,
                  icon: Icons.person,
                  isName: true,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: CouleurPrincipale, // Text color
                      shadowColor: Colors.deepPurpleAccent, // Shadow color
                      elevation: 10, // Elevation
                      padding: const EdgeInsets.symmetric(
                          horizontal: 50, vertical: 15), // Padding
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(10), // Rounded corners
                      ),
                      textStyle: const TextStyle(
                        fontSize: 18, // Text size
                        fontWeight: FontWeight.bold, // Text weight
                      ),
                    ),
                    onPressed: () {
                      // Handle button press
                    },
                    child: Text(
                      'Save',
                      style: TitreStyleWhite,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget textField(
      {String? textHint,
      onTap,
      TextEditingController? controller,
      bool? enabled,
      bool? isNumber,
      IconData? icon,
      bool? readOnly,
      VoidCallback? func,
      bool? isName,
      IconData? suffixIcon,
      VoidCallback? onPressed,
      VoidCallback? KboardType,
      VoidCallback? onChange}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(top: 5.0),
          child: Text("$textHint"),
        ),
        Container(
          height: 60.0,
          width: MediaQuery.of(context).size.width * 0.88,
          margin: const EdgeInsets.only(top: 5.0),
          padding: const EdgeInsets.only(left: 10.0, right: 10.0),
          decoration: BoxDecoration(
            color: Colors.grey[100],
            border: Border.all(color: Colors.grey, width: 1),
            borderRadius: BorderRadius.circular(5.0),
          ),
          child: Center(
            child: TextFormField(
              readOnly: readOnly != true ? false : true,
              onTap: func,
              keyboardType: isNumber == null
                  ? TextInputType.text
                  : const TextInputType.numberWithOptions(),
              enabled: enabled ?? true,
              controller: controller,
              decoration: InputDecoration(
                border: InputBorder.none,
                prefixIcon: Icon(icon),
                suffixIcon: isName != null
                    ? IconButton(
                        icon: Icon(suffixIcon),
                        onPressed: onPressed,
                      )
                    : null,
              ),
            ),
          ),
        )
      ],
    );
  }
}

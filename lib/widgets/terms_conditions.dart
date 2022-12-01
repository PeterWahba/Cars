import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class TermsAndConditions extends StatefulWidget {
  const TermsAndConditions({Key? key}) : super(key: key);

  @override
  State<TermsAndConditions> createState() => TermsAndConditionsState();
}

class TermsAndConditionsState extends State<TermsAndConditions> {
  bool _checked = false;
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Checkbox(
              value: _checked,
              onChanged: (bool? value) {
                setState(() {
                  _checked = value!;
                });
              }),
          SizedBox(
            width: 285.0,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'هل تريد تطبيق الاتفاقية على هذه السيارة؟',
                  style: TextStyle(
                      fontFamily: 'Dubai',
                      fontSize: 13.0,
                      fontWeight: FontWeight.w700),
                ),
                Text(
                    'عند موافقتك على تطبيق الاتفاقيه سوف تكون ملزم بتقديمها قبل استلام سيارتك',
                    softWrap: true,
                    style: TextStyle(
                        color: Color.fromRGBO(0, 0, 0, 0.51),
                        fontFamily: 'Dubai',
                        fontSize: 13.0,
                        fontWeight: FontWeight.w400)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

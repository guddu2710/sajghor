import 'package:flutter/material.dart';
import 'package:pin_code_text_field/pin_code_text_field.dart';
import 'package:sajghor/login/password.dart';
import 'package:sajghor/login/verifiedTick.dart';
import 'package:sajghor/utils/color.dart';
class EnterOTP extends StatefulWidget {
  @override
  _EnterOTPState createState() => _EnterOTPState();
}

class _EnterOTPState extends State<EnterOTP> {
  bool hasError = false;
  TextEditingController otpController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child:
      Scaffold(
        backgroundColor:  MyColors.primary,
        body: ListView(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: false,
          children: <Widget>[
            SizedBox(
              height: 20.0,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Flexible(
                      flex: 2,
                      child: Padding(
                        padding: const EdgeInsets.only(left:8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "Enter OTP",
                              style: TextStyle(color:  MyColors.accent,fontSize: 50.0),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Flexible(
                      flex: 1,
                      child:  Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Card(
                          color: Colors.transparent,
                          semanticContainer:false,
                          clipBehavior: Clip.antiAlias,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon(Icons.lock,size: 50.0,color: MyColors.accent,),
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50,),
                          ),
                          elevation: 10,
                          borderOnForeground: false,
                          margin: EdgeInsets.all(5),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 50.0,),
                Padding(
                  padding: const EdgeInsets.only(right:8.0,left:8.0),
                  child: Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
                    style: TextStyle(fontSize:18.0,color:  MyColors.accent),
                  ),
                ),
                SizedBox(height: 30.0,),
                Padding(
                  padding: const EdgeInsets.only(right:8.0,left:8.0),
                  child: PinCodeTextField(
                    maxLength: 4,
                    controller: otpController,
                    pinBoxHeight: 50.0,
                    pinBoxWidth: 50.0,
                    hasError: hasError,
                    autofocus: false,
                    highlightColor:  MyColors.accent,
                    hasTextBorderColor:  MyColors.white,
                    defaultBorderColor:  MyColors.white,
                    pinCodeTextFieldLayoutType: PinCodeTextFieldLayoutType.AUTO_ADJUST_WIDTH,
                    pinBoxDecoration:ProvidedPinBoxDecoration.underlinedPinBoxDecoration,
                    pinTextStyle: TextStyle(
                        fontSize: 18.0,
                        color:  MyColors.accent,
                        fontWeight: FontWeight.w600
                    ),
                    onTextChanged: (text) {
                      setState(() {
                        hasError = false;
                      });
                    },
                  ),
                ),
          SizedBox(height: MediaQuery.of(context).size.height*.10,),
          Padding(
            padding: const EdgeInsets.only(right:8.0,left:10.0),
            child: Text("RESEND OTP",
              style: TextStyle(fontSize:18.0,color:  MyColors.accent,fontWeight: FontWeight.w500),
            ),
          ),
                SizedBox(height: MediaQuery.of(context).size.height*.10,)
              ],
            ),
          ],
        ),
        bottomNavigationBar: _buildBottomNavigationBar(),
      ),
    );
  }
  _buildBottomNavigationBar() {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 50.0,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[

          Flexible(
            flex: 2,
            child: RaisedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => VerifyTick()),
                );
              },
              color:  MyColors.accent,
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[

                    Text(
                      "VERIFY",
                      style: TextStyle(color:  MyColors.primary,fontSize: 18.0),
                    ),

                    Icon(
                      Icons.chevron_right,
                      color:  MyColors.primary,
                    ),

                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

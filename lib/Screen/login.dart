import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:wheather/Screen/home.dart';
enum MobileState{
  SHOW_MOBILE,
  SHOW_OTP,    
}   
class Login extends StatefulWidget{
  @override
  _LoginState createState() => _LoginState();
   

}
class _LoginState extends State<Login>{

  MobileState currentState =MobileState.SHOW_MOBILE;
  final phoneControler = TextEditingController();
  final otpControler = TextEditingController();
  FirebaseAuth _auth = FirebaseAuth.instance;
 late String verificationId;
  bool showLoading = false;
  void signInWithPhoneAuthCredential(phoneAuthCredential) async{
    setState(() {
      showLoading =true;
    });
    try{
    final authCredential = await _auth.signInWithCredential(phoneAuthCredential);
    setState(() {
      showLoading=false;
    });
    if(authCredential.user!=null){
      Navigator.push(context, MaterialPageRoute(builder: (context)=>Home()));
    }
    } on FirebaseAuthException catch(e){
      setState(() {
        showLoading =false;
      });
      // ignore: deprecated_member_use
      _scaffoldKey.currentState!.showSnackBar(SnackBar(content: Text(e.message!)));
    }
}
  getMobileWidget(context){
return  Scaffold(
   
  body: 
    
   Column(
      children:[
        Spacer(),
        TextField(
          controller: phoneControler,
          decoration: InputDecoration(
            hintText: 'phone number'
          ),
        ),
        SizedBox(
          height: 12,
        ),
        // ignore: deprecated_member_use
        // ignore: deprecated_member_use
        FlatButton(onPressed: ()async{
          setState(() {
            showLoading = true;
          });
         // ignore: non_constant_identifier_names
         await  _auth.verifyPhoneNumber(phoneNumber: phoneControler.text,
          // ignore: non_constant_identifier_names
          verificationCompleted: (PhoneAuthCredential) async{
setState(() {
  showLoading=false;
});
         }, verificationFailed:(verificationFailed) async{
           setState(() {
  showLoading=false;
});
// ignore: deprecated_member_use
_scaffoldKey.currentState!.showSnackBar(SnackBar(content: Text(verificationFailed.message!)));
         }, codeSent: (verificationId,resendingToken) async{
setState(() {
  showLoading=false;
  currentState = MobileState.SHOW_OTP;
  this.verificationId=verificationId;
});
         },
          codeAutoRetrievalTimeout: (verificationId) async{

          },);
        },
        child: Text("Sign In"),
        color: Colors.red,
        textColor: Colors.white,),
        Spacer(),
      ],
   
   ),
    );

  }
  getOtpWidget(context){
    return Scaffold(
      body: Column(
      children:[
      Spacer(),
      TextField(
        controller: otpControler,
        decoration: InputDecoration(
          hintText: 'enter otp'
        ),
      ),
      SizedBox(
        height: 16,
      ),
      // ignore: deprecated_member_use
      FlatButton(onPressed: ()async{
        // ignore: non_constant_identifier_names
        PhoneAuthCredential phoneAuthCredential = PhoneAuthProvider.credential(verificationId: verificationId, smsCode: otpControler.text);
        signInWithPhoneAuthCredential(phoneAuthCredential);
      },
      child: Text("VERIFY"),
      color: Colors.yellow,
      textColor: Colors.black,),
      Spacer(),
      ],
    ),
    );

  }
final GlobalKey<ScaffoldState>_scaffoldKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
     return Scaffold(
       key:_scaffoldKey ,
       body: Container(
      child:showLoading ? Center(child: CircularProgressIndicator(),):currentState == MobileState.SHOW_MOBILE?
      getMobileWidget(context):
      getOtpWidget(context),
      padding: const EdgeInsets.all(16),
      ) );
  }

}


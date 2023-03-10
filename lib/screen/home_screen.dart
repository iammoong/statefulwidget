import 'package:flutter/material.dart';



// class HomeScreen extends StatefulWidget{
//   final Color color;
//
//   const HomeScreen({
//     required this.color,
//     Key? key,
// }) : super(key : key);
//
//   @override
//   State<StatefulWidget> createState() {
//     return _HomeScreenState();
//   }
// }
//
// class _HomeScreenState extends State<HomeScreen>{
//   @override
//   Widget build(BuildContext context) {
//
//     return Container(
//       width: 50.0,
//       height: 50.0,
//       color: widget.color,
//     );
//   }
//
// }

//stful 로 생성
class HomeScreen extends StatefulWidget {
  final Color color;
   HomeScreen({
    required this.color,
    Key? key}) : super(key: key){
     print('Widget Constructor 실행!');
   }

  @override
  State<HomeScreen> createState() {
    print('createState 실행!');
     return _HomeScreenState();
  }
}

class _HomeScreenState extends State<HomeScreen> {
  int number =0;

  @override
  void initState() {
    print('initState 실행!');
    super.initState();
  }
  
  @override
  void didChangeDependencies() {
    print('didChangeDependencies 실행!');
    super.didChangeDependencies();
  }

  @override
  void deactivate() {
    print('deactivate 실행!');
    super.deactivate();
  }
  @override
  void dispose() {
    print('dispose 실행!');
    super.dispose();
  }

  @override
  void didUpdateWidget(covariant HomeScreen oldWidget) {
    print('didUpdateWidget 실행!');
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {

    print('build 실행!');
    // 화면에서 인식하는 모든 인식들을 확인 할 수 있다.
    //단 child 단에 있는 것만 인식한다.
    return GestureDetector(
      onTap: (){
        setState(() {
          number++;
        });
      },
      child: Container(
        width: 50.0,
        height: 50.0,
        color: widget.color,
        child: Center(
          child: Text(number.toString()
          ),
        ),
      ),
    );
  }
}



// 적용전
class _HomeScreen extends StatelessWidget {
  final Color color;

  const _HomeScreen({
    required this.color,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50.0,
      height: 50.0,
      color: color,
    );
  }
}

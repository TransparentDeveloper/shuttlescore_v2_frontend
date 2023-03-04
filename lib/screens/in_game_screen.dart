import 'package:flutter/material.dart';

import '../commons/background.dart';
import '../models/status.dart';

class InGameScreen extends StatefulWidget {
  const InGameScreen({super.key, required this.status});

  final Status status;

  @override
  State<InGameScreen> createState() => _InGameScreenState();
}

class _InGameScreenState extends State<InGameScreen> {
  List<int>? _scores = List<int>.filled(2, 0); // 1팀 경기 score
  List<int> _setWon = List<int>.filled(2, 0); // 1팀이 이긴 set 수// 2팀이 이긴 set 수
  int? _totalSet; // 전체 set 수

  final int maxScore = 501;

  @override
  void initState() {
    super.initState();
    _init();
  }

  _init() {
    _scores = <int>[0, 0];
    _setWon = <int>[widget.status.setA, widget.status.setB];
    _totalSet = widget.status.totalSet;
  }

  void _increaseScore(int idx) {
    _scores![idx] += 1;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            const Background(),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () => _increaseScore(0),
                    child: ScoreBox(score: _scores![0]),
                  ),
                  GestureDetector(
                    onTap: () => _increaseScore(1),
                    child: ScoreBox(score: _scores![1]),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ScoreBox extends StatelessWidget {
  const ScoreBox({
    Key? key,
    required this.score,
    this.idx,
  }) : super(key: key);

  final int? score;
  final int? idx;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width / 2,
      child: Text(
        "$score",
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: MediaQuery.of(context).size.width / 5,
          fontWeight: FontWeight.w600,
          color: Theme.of(context).primaryColor,
        ),
      ),
    );
  }
}

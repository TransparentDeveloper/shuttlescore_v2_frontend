// ignore_for_file: slash_for_doc_comments, duplicate_ignore

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
    _scores = <int>[500, 100];
    _setWon = <int>[widget.status.setWonA, widget.status.setWonB];
    _totalSet = widget.status.totalSet;
  }

  /**
   * Score UpCounting
   */
  void _increaseScore(int idx) {
    print("idx: $idx");
    _scores![idx] += 1;
    setState(() {});
  }

  /**
   * Score DownCounting
   */
  void _decreaseScore(int idx) {
    _scores![idx] -= 1;
    setState(() {});
  }

  /**
   * Court Change
   */
  void _interChangeCourt() {}

  /**
   * 경기 강제 종료
   */
  void _exitGame() {}

  /**
   * 서비스 위치 Tracking
   */
  void trackingServicePosition(int idx) {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            const Background(),
            Row(
              children: [
                GestureDetector(
                  onTap: () => _increaseScore(0),
                  child: Stack(
                    children: [
                      ScoreBox(score: _scores![0], idx: 0),
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () => _increaseScore(1),
                  child: ScoreBox(score: _scores![1], idx: 1),
                )
              ],
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
    return Container(
      color: const Color(0x00000000),
      width: MediaQuery.of(context).size.width / 2,
      height: MediaQuery.of(context).size.height,
      child: Center(
        child: Stack(
          children: [
            Align(
              alignment: Alignment.center,
              child: Text(
                "$score",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: MediaQuery.of(context).size.width / 5,
                  fontWeight: FontWeight.w600,
                  color: Theme.of(context).primaryColor,
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 18.0, vertical: 8.0),
              child: Align(
                alignment: Alignment.bottomRight,
                child: FloatingActionButton(
                  onPressed: () => {},
                  child: const Text(
                    "-1",
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// ignore_for_file: slash_for_doc_comments, duplicate_ignore

import 'package:flutter/material.dart';

import '../commons/cover_background.dart';
import '../models/status.dart';

class InGameScreen extends StatefulWidget {
  const InGameScreen({super.key, required this.status});

  final Status status;

  @override
  State<InGameScreen> createState() => _InGameScreenState();
}

typedef Callback = void Function(int val);

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
  void _exitGame(BuildContext context) {
    Navigator.popUntil(context, ModalRoute.withName("/"));
  }

  /**
   * 서비스 위치 Tracking
   */
  void trackingServicePosition(int idx) {}

  @override
  Widget build(BuildContext context) {
    return CoverBackGround(
      children: [
        Align(
          alignment: Alignment.center,
          child: Row(
            children: [
              GestureDetector(
                onTap: () => _increaseScore(0),
                child: ScoreBox(
                  score: _scores![0],
                  idx: 0,
                  minus: (val) => _decreaseScore(val),
                ),
              ),
              GestureDetector(
                onTap: () => _increaseScore(1),
                child: ScoreBox(
                  score: _scores![1],
                  idx: 1,
                  minus: (val) => _decreaseScore(val),
                ),
              )
            ],
          ),
        ),
        Align(
          alignment: Alignment.topRight,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: IconButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) => AlertDialog(
                    title: const Text(
                      '게임 초기화',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    content: const Text('아직 경기가 진행 중입니다.'),
                    actions: [
                      TextButton(
                        onPressed: () => _exitGame(context),
                        child: const Text('초기화'),
                      ),
                      TextButton(
                        onPressed: () => Navigator.of(context).pop(),
                        child: const Text('이어하기'),
                      ),
                    ],
                  ),
                );
              },
              icon: const Icon(
                Icons.close,
                color: Colors.white,
              ),
              iconSize: 25.0,
            ),
          ),
        ),
      ],
    );
  }
}

class ScoreBox extends StatelessWidget {
  const ScoreBox({
    Key? key,
    required this.score,
    this.idx,
    required this.minus,
  }) : super(key: key);

  final int? score;
  final int? idx;
  final Callback minus;

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
                  onPressed: () {
                    minus(idx!);
                  },
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

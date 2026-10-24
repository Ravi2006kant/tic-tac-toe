import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class Home extends StatefulWidget {
  const Home({super.key});
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final AudioPlayer audioPlayer = AudioPlayer();
  bool ohTurn = true;
  List<String> displayexoh = ["", "", "", "", "", "", "", "", ""];

  @override
  Widget build(BuildContext context) {
    void _showWinDialog(String winner) {
      audioPlayer.play(AssetSource('sounds/win.mp3'));
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(title: Text("Winner is" + " " + winner));
        },
      );
    }

    @override
    void dispose() {
      audioPlayer.dispose();
      super.dispose();
    }

    void _checkwinner() {
      if (displayexoh[0] == displayexoh[1] &&
          displayexoh[0] == displayexoh[2] &&
          displayexoh[0] != '') {
        _showWinDialog(displayexoh[0]);
      }

      if (displayexoh[3] == displayexoh[4] &&
          displayexoh[3] == displayexoh[5] &&
          displayexoh[3] != '') {
        _showWinDialog(displayexoh[3]);
      }

      if (displayexoh[6] == displayexoh[7] &&
          displayexoh[6] == displayexoh[8] &&
          displayexoh[6] != '') {
        _showWinDialog(displayexoh[6]);
      }

      if (displayexoh[0] == displayexoh[3] &&
          displayexoh[0] == displayexoh[6] &&
          displayexoh[0] != '') {
        _showWinDialog(displayexoh[0]);
      }

      if (displayexoh[1] == displayexoh[4] &&
          displayexoh[1] == displayexoh[7] &&
          displayexoh[1] != '') {
        _showWinDialog(displayexoh[1]);
      }

      if (displayexoh[2] == displayexoh[5] &&
          displayexoh[2] == displayexoh[8] &&
          displayexoh[2] != '') {
        _showWinDialog(displayexoh[2]);
      }

      if (displayexoh[6] == displayexoh[4] &&
          displayexoh[6] == displayexoh[2] &&
          displayexoh[6] != '') {
        _showWinDialog(displayexoh[6]);
      }
      if (displayexoh[0] == displayexoh[4] &&
          displayexoh[0] == displayexoh[8] &&
          displayexoh[0] != '') {
        _showWinDialog(displayexoh[0]);
      }
    }

    void _tapped(int index) {
      setState(() {
        if (ohTurn) {
          displayexoh[index] = '0';
          audioPlayer.play(AssetSource('sounds/move.mp3'));
        } else {
          audioPlayer.play(AssetSource('sounds/player.mp3'));
          displayexoh[index] = 'X';
        }
        ohTurn = !ohTurn;
        _checkwinner();
      });
    }

    return Scaffold(
      backgroundColor: Colors.grey.shade800,
      body: Column(
        children: [
          //Header
          Expanded(
            child: Center(
              child: Container(
                child: Text(
                  "TIC - TAC - TOE",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: .bold,
                    fontSize: 25,
                  ),
                ),
              ),
            ),
          ),
          //Main Board
          Expanded(
            flex: 4,
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: GridView.builder(
                itemCount: 9,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                ),
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                    onTap: () {
                      _tapped(index);
                    },
                    child: Container(
                      margin: EdgeInsets.all(3),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(color: Colors.white),
                      ),
                      child: Center(
                        child: Text(
                          // index.toString(),
                          displayexoh[index],
                          style: TextStyle(color: Colors.white, fontSize: 40),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}

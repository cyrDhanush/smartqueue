import 'package:flutter/material.dart';

class FileTile extends StatefulWidget {
  final String filename;
  const FileTile({Key? key, this.filename = 'File Name'}) : super(key: key);

  @override
  State<FileTile> createState() => _FileTileState();
}

class _FileTileState extends State<FileTile> {
  int n = 1;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.symmetric(horizontal: 15),
      decoration: BoxDecoration(),
      child: Row(
        children: [
          Expanded(
            child: Text(
              widget.filename,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Row(
            children: [
              Container(
                height: 30,
                width: 30,
                alignment: Alignment.topCenter,
                child: TextButton(
                  onPressed: () {
                    if (n >= 2) {
                      n -= 1;
                      setState(() {});
                    }
                  },
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.black.withAlpha(30),
                    padding: EdgeInsets.all(0),
                  ),
                  child: Container(
                    height: 2,
                    width: 10,
                    color: Colors.black,
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                width: 40,
                height: 30,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text(
                  n.toString(),
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                height: 30,
                width: 30,
                child: TextButton(
                  onPressed: () {
                    n += 1;
                    setState(() {});
                  },
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.black.withAlpha(30),
                    padding: EdgeInsets.symmetric(vertical: 0, horizontal: 0),
                    alignment: Alignment.center,
                  ),
                  child: Icon(
                    Icons.add,
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

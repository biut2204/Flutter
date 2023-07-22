import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(MaterialApp(
    home: SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Text('Bài tập test'),
        ),
        body: MyWidget(),
      ),
    ),
    debugShowCheckedModeBanner: false,
  ));
}

class MyWidget extends StatefulWidget {
  @override
  MyWidgetState createState() => MyWidgetState();
}

class MyWidgetState extends State<MyWidget> {
  late SharedPreferences _prefs;
  List<String> listDanhSach = ["Nhân viên","Công nhân"];

  @override
  void initState() {
    super.initState();
    _loadData();
  }

  void _loadData() async {
    _prefs = await SharedPreferences.getInstance();
    List<String>? savedList = _prefs.getStringList('d_sach_cong_viec');
    if (savedList != null) {
      setState(() {
        listDanhSach = savedList;
      });
    }
  }

  void _saveData() {
    _prefs.setStringList('d_sach_cong_viec', listDanhSach);
  }

  void add(String congViec) {
    setState(() {
      listDanhSach.add(congViec);
    });
    _saveData();
  }

  void remove(int index) {
    setState(() {
      listDanhSach.removeAt(index);
    });
    _saveData();
  }

  void update(int index, String update) {
    setState(() {
      listDanhSach[index] = update;
    });
    _saveData();
  }

  void len(int index) {
    setState(() {
      listDanhSach.insert(index-1, listDanhSach[index]);
      listDanhSach.removeAt(index+1);
    });
    _saveData();
  }
  void xuong(int index) {
    setState(() {
      listDanhSach.insert(index+1, listDanhSach[index]);
      listDanhSach.removeAt(index-1);
    });
    _saveData();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: ListView.builder(
        itemCount: listDanhSach.length,
        itemBuilder: (context, index) {
          return Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          listDanhSach[index],
                          style: TextStyle(fontSize: 18),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 5),
                  Positioned(
                    bottom: 16.0,
                    right: 16.0,
                    child: FloatingActionButton(
                      onPressed: () {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            String newCongViec = '';
                            return AlertDialog(
                              title: Text('Thêm công việc mới'),
                              content: TextField(
                                onChanged: (value) {
                                  newCongViec = value;
                                },
                              ),
                              actions: [
                                ElevatedButton(
                                  onPressed: () {
                                    add(newCongViec);
                                    Navigator.of(context).pop();
                                  },
                                  child: Text('Thêm'),
                                ),
                              ],
                            );
                          },
                        );
                      },
                      child: Icon(Icons.add),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      remove(index);
                    },
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.grey,
                    ),
                    child: Icon(Icons.remove),
                  ),
                  SizedBox(width: 5),
                  TextButton(
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          String newCongViec = '';
                          return AlertDialog(
                            title: Text('Update công việc'),
                            content: TextField(
                              onChanged: (value) {
                                newCongViec = value;
                              },
                            ),
                            actions: [
                              ElevatedButton(
                                onPressed: () {
                                  update(index, newCongViec);
                                  Navigator.of(context).pop();
                                },
                                child: Text('Cập nhật'),
                              ),
                            ],
                          );
                        },
                      );
                    },
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.grey,
                    ),
                    child: Icon(Icons.update),
                  ),
                  SizedBox(width: 5),
                  TextButton(
                    onPressed: () {
                      len(index);
                    },
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.grey,
                    ),
                    child: Icon(Icons.redo),
                  ),
                  SizedBox(width: 5),
                  TextButton(
                    onPressed: () {
                      xuong(index);
                    },
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.grey,
                    ),
                    child: Icon(Icons.undo),
                  ),
                ],
              ),
            ),
          );
        },

      ),
    );
  }
}

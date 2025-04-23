import 'package:flutter/material.dart';

class MySearchBar extends StatefulWidget {
  final Function()? onTap;
  final String? searchKey;
  final TextEditingController searchController;

  MySearchBar({
    super.key,
    this.onTap,
    required this.searchController,
    this.searchKey,
  });

  @override
  State<MySearchBar> createState() => _MySearchBarState();
}

class _MySearchBarState extends State<MySearchBar> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    widget.searchController.text = widget.searchKey ?? '';
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Expanded(
            child: Container(
              height: 50,
              padding: EdgeInsets.only(top: 2, left: 20),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: Offset(0, 3),
                    ),
                  ]),
              child: TextField(
                controller: widget.searchController,
                textInputAction: TextInputAction.search,
                autofocus: true,
                showCursor: true,
                style: TextStyle(),
                cursorColor: Colors.black,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Cari Berita",
                ),
              ),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          InkWell(
            onTap: widget.onTap,
            child: Container(
              height: 50,
              width: 50,
              child: Icon(Icons.search, color: Colors.white),
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
    ;
  }
}

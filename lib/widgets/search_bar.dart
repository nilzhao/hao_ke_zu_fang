import 'package:flutter/material.dart';
import 'package:hao_ke_zu_fang/config/style_vars.dart';
import 'package:hao_ke_zu_fang/widgets/common_image.dart';

class SearchBar extends StatefulWidget {
  final bool showLocation;
  final Function? onGoBack;
  final String defaultInputValue;
  final bool showMap;
  final Function? onSearchTap;
  final void Function(String)? onSearchSubmit;
  final Function? onCancel;

  const SearchBar({
    Key? key,
    this.showLocation = false,
    this.onGoBack,
    this.defaultInputValue = '',
    this.showMap = false,
    this.onSearchTap,
    this.onSearchSubmit,
    this.onCancel,
  }) : super(key: key);

  @override
  _SearchBarState createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  String _keyWord = '';
  late TextEditingController _searchController;
  late FocusNode _searchFocus;

  _handleClear() {
    _searchController.clear();
    setState(() {
      _keyWord = '';
    });
  }

  @override
  void initState() {
    super.initState();

    _searchController =
        new TextEditingController(text: widget.defaultInputValue);
    _searchFocus = FocusNode();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          if (widget.showLocation)
            Row(
              children: [
                Icon(
                  Icons.place_outlined,
                  size: QFont.size_md,
                  color: Theme.of(context).primaryColor,
                ),
                Text(
                  '北京',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: QFont.size_md,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    right: QSpace.sm,
                  ),
                ),
              ],
            ),
          if (widget.onGoBack != null)
            Padding(
              padding: EdgeInsets.only(
                right: QSpace.sm,
              ),
              child: GestureDetector(
                onTap: () {
                  widget.onGoBack!(context);
                },
                child: Icon(
                  Icons.chevron_left,
                  color: Colors.black,
                ),
              ),
            ),
          Expanded(
            child: Container(
              padding: EdgeInsets.only(left: QSpace.sm),
              height: 34.0,
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(100.0),
              ),
              child: TextField(
                onTap: () {
                  if (widget.onSearchSubmit == null) {
                    _searchFocus.unfocus();
                  }
                  if (widget.onSearchTap != null) {
                    widget.onSearchTap!(context);
                  } else {
                    _searchFocus.requestFocus();
                  }
                },
                onChanged: (String val) {
                  setState(() {
                    _keyWord = val;
                  });
                },
                onSubmitted: widget.onSearchSubmit,
                style: TextStyle(
                  fontSize: QFont.size_md,
                  height: 1.2,
                ),
                controller: _searchController,
                focusNode: _searchFocus,
                decoration: InputDecoration(
                  hintText: '请输入关键字',
                  border: InputBorder.none,
                  suffixIcon: GestureDetector(
                    onTap: () {
                      _handleClear();
                    },
                    child: Icon(
                      Icons.clear,
                      size: QFont.size_lg,
                      color: _keyWord == '' ? Colors.grey[200] : Colors.grey,
                    ),
                  ),
                  icon: Icon(Icons.search_outlined),
                ),
              ),
            ),
          ),
          if (widget.onCancel != null)
            TextButton(
              onPressed: () {},
              child: Text('取消', style: TextStyle(color: Colors.black)),
            ),
          if (widget.showMap)
            CommonImage('static/icons/widget_search_bar_map.png'),
        ],
      ),
    );
  }
}

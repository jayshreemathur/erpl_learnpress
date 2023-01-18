import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../resource/app_theme.dart';
import 'add_text.dart';
import 'dimentions.dart';

class SearchField extends StatefulWidget {
  final String? title;
  final GestureTapCallback? onPressed;
  SearchField({Key? key, this.title, this.onPressed}) : super(key: key);

  @override
  State<SearchField> createState() => _SearchFieldState();
}

class _SearchFieldState extends State<SearchField> {
  var selectval;

  List listitems = ['Default', "Newest", "Oldest", "Popular"];

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          // margin: EdgeInsets.only(
          //   left: AddSize.size10,
          //   right: AddSize.size10,
          // ),
          decoration: BoxDecoration(
              color: AppTheme.searchfield,
              borderRadius: BorderRadius.circular(AddSize.size40),
              boxShadow: blurBoxShadow),
          height: AddSize.size50,
          width: AddSize.screenWidth * .7,
          child: Row(
            children: [
              SizedBox(width: AddSize.size10),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: AddSize.size10 * .2),
                // child:
                //     Icon(Icons.search, color: Theme.of(context).iconTheme.color),
              ),
              GestureDetector(
                onTap: widget.onPressed,
                child: Image.asset(
                  'assets/icons/search.png',
                  width: AddSize.size20,
                  height: AddSize.size20,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(
                width: AddSize.size12,
              ),
              Expanded(
                child: TextField(
                  maxLines: 1,
                  onSubmitted: (value) {},
                  style: TextStyle(fontSize: AddSize.font16),
                  decoration: InputDecoration(
                    filled: true,
                    border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius:
                            BorderRadius.all(Radius.circular(AddSize.size10))),
                    fillColor: AppTheme.searchfield,
                    contentPadding: EdgeInsets.zero,
                    hintText: widget.title,
                  ),
                ),
              ),
              SizedBox(
                width: AddSize.size12,
              ),
            ],
          ),
        ),
        SizedBox(width: AddSize.size5),
        InkWell(
          onTap: () {
            DropdownButton(
              style: TextStyle(color: Colors.white), //Dropdown font color
              dropdownColor: Colors.redAccent, //dropdown menu background color
              icon: Icon(Icons.arrow_downward,
                  color: Colors.white), //dropdown indicator icon
              underline: Container(), //make underline empty
              value: selectval,
              onChanged: (value) {
                setState(() {
                  selectval = value.toString();
                });
              },
              items: listitems.map((itemone) {
                return DropdownMenuItem(value: itemone, child: Text(itemone));
              }).toList(),
            );
          },
          child: Container(
            height: AddSize.size50,
            padding: EdgeInsets.all(AddSize.padding15),
            decoration: BoxDecoration(
                shape: BoxShape.circle, color: AppTheme.searchfield),
            child: Image.asset(
              'assets/icons/filter.png',
              //color: AppTheme.primaryColor.withOpacity(.3),
              height: AddSize.size10,
            ),
          ),
        ),
      ],
    );
  }

  showFilterBottomSheet(context) {
    showFilterButtonSheet(
        context: context,
        titleText: "Filters",
        widgets: Padding(
          padding: EdgeInsets.all(AddSize.padding10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AddText(
                text: 'Default',
                textAlign: TextAlign.start,
                color: AppTheme.filtter,
                fontWeight: FontWeight.w500,
                fontSize: AddSize.font16,
              ),
              addHeight(20),
              AddText(
                text: 'Newest',
                textAlign: TextAlign.start,
                color: AppTheme.filtter,
                fontWeight: FontWeight.w500,
                fontSize: AddSize.font16,
              ),
              addHeight(20),
              AddText(
                text: 'Oldest',
                textAlign: TextAlign.start,
                color: AppTheme.filtter,
                fontWeight: FontWeight.w500,
                fontSize: AddSize.font16,
              ),
              addHeight(20),
              AddText(
                text: 'Popular',
                textAlign: TextAlign.start,
                color: AppTheme.filtter,
                fontWeight: FontWeight.w500,
                fontSize: AddSize.font16,
              ),
            ],
          ),
        ));
  }

  Fillters(BuildContext context) {
    // var deviceWidth = AddSize.screenHeight;
    showDialog(
        context: context,
        barrierDismissible: true,
        builder: (BuildContext context) => StatefulBuilder(
            builder: (context, setState) => Dialog(
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15.0))),
                  insetPadding:
                      EdgeInsets.symmetric(horizontal: AddSize.size20),
                  child: Container(
                    height: AddSize.size200,
                    padding: EdgeInsets.all(AddSize.size15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        addHeight(20),
                        AddText(
                          text: 'Default',
                          textAlign: TextAlign.start,
                          color: AppTheme.filtter,
                          fontWeight: FontWeight.w500,
                          fontSize: AddSize.font16,
                        ),
                        addHeight(20),
                        AddText(
                          text: 'Newest',
                          textAlign: TextAlign.start,
                          color: AppTheme.filtter,
                          fontWeight: FontWeight.w500,
                          fontSize: AddSize.font16,
                        ),
                        addHeight(20),
                        AddText(
                          text: 'Oldest',
                          textAlign: TextAlign.start,
                          color: AppTheme.filtter,
                          fontWeight: FontWeight.w500,
                          fontSize: AddSize.font16,
                        ),
                        addHeight(20),
                        AddText(
                          text: 'Popular',
                          textAlign: TextAlign.start,
                          color: AppTheme.filtter,
                          fontWeight: FontWeight.w500,
                          fontSize: AddSize.font16,
                        ),
                      ],
                    ),
                  ),
                )));
  }
}

import 'package:flutter/material.dart';
import 'package:hmdi/model/model.dart';

Widget createVehicleItemWidget(VehicleInfo info) {
  return _VehicleItemWidget(info);
}

class _VehicleItemWidget extends StatefulWidget {
  final VehicleInfo info;

  const _VehicleItemWidget(this.info);
  @override
  _VehicleItemWidgetState createState() => _VehicleItemWidgetState();
}

class _VehicleItemWidgetState extends State<_VehicleItemWidget> with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 123,
      padding: const EdgeInsets.fromLTRB(16, 24, 0, 0),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(color: Colors.grey[300]),
        ),
      ),
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 16),
              child: Image.network(widget.info.imageUrl),
            ),
          ),
          SizedBox(width: 24),
          Expanded(
            flex: 2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(widget.info.name),
                SizedBox(height: 10),
                Text(widget.info.subName),
                Text(
                  widget.info.price,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: SizedBox(
                    height: 35,
                    width: 35,
                    child: FlatButton(
                      padding: EdgeInsets.zero,
                      color: Colors.grey[300],
                      child: Icon(Icons.keyboard_arrow_down),
                      onPressed: () {},
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

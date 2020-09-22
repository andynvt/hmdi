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
  bool isExpanded = false;
  Map<String, VehicleInfo> compareMap = {};
  AnimationController expandController;
  Animation<double> animation;

  void _compareVehiclesClick() {
    //TODO: _compareVehicles compareMap
    print(compareMap);
  }

  void prepareAnimations() {
    expandController = AnimationController(vsync: this, duration: Duration(milliseconds: 500));
    Animation curve = CurvedAnimation(
      parent: expandController,
      curve: Curves.fastOutSlowIn,
    );
    animation = Tween(begin: 0.0, end: 1.0).animate(curve)
      ..addListener(() {
        setState(() {});
      });
  }

  void toogleExpand() {
    isExpanded = !isExpanded;
    if (isExpanded) {
      expandController.forward();
    } else {
      expandController.reverse();
    }
  }

  @override
  void initState() {
    prepareAnimations();
    super.initState();
  }

  @override
  void dispose() {
    expandController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: isExpanded ? Colors.transparent : Colors.grey[300],
          ),
        ),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 24, 0, 0),
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
                    ],
                  ),
                ),
              ],
            ),
          ),
          Stack(
            alignment: Alignment.bottomRight,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 35),
                child: SizeTransition(
                  sizeFactor: animation,
                  axisAlignment: 1.0,
                  child: Container(
                    width: double.infinity,
                    color: Colors.grey[200],
                    padding: EdgeInsets.fromLTRB(16, 8, 16, 24),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '${widget.info.variants.length} Variants',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            FlatButton(
                              onPressed: compareMap.isEmpty ? null : _compareVehiclesClick,
                              child: Text(
                                'Compare',
                                style: TextStyle(
                                  color: compareMap.isEmpty ? Colors.grey : Colors.blue,
                                  decoration: TextDecoration.underline,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 8),
                        _buildVariants(),
                      ],
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: SizedBox(
                  height: 35,
                  width: 35,
                  child: FlatButton(
                    padding: EdgeInsets.zero,
                    color: isExpanded ? Colors.grey[700] : Colors.grey[300],
                    child: Icon(
                      isExpanded ? Icons.keyboard_arrow_up : Icons.keyboard_arrow_down,
                      color: isExpanded ? Colors.white : Colors.black,
                    ),
                    onPressed: toogleExpand,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildVariants() {
    return Column(
      children: () {
        final vars = widget.info.variants;
        final List<Widget> ls = [];
        vars.forEach((element) {
          ls.add(
            Container(
              height: 100,
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    blurRadius: 5,
                    color: Colors.grey[400],
                    offset: Offset(0, 1),
                  ),
                ],
              ),
              child: Material(
                color: Colors.transparent,
                child: InkWell(
                  highlightColor: Colors.transparent,
                  onTap: () {
                    //TODO: open detail ??
                    print('open detail');
                  },
                  child: Stack(
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: Row(
                          children: [
                            SizedBox(width: 24),
                            Image.network(
                              element.imageUrl,
                              width: 90,
                            ),
                            SizedBox(width: 16),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(element.name),
                                  SizedBox(height: 8),
                                  Text(element.subName),
                                  Text(
                                    element.price,
                                    style: TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                            Icon(Icons.chevron_right),
                            SizedBox(width: 8),
                          ],
                        ),
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Material(
                          color: Colors.transparent,
                          child: InkWell(
                            onTap: () {
                              setState(() {
                                if (compareMap[element.id] == null) {
                                  compareMap[element.id] = element;
                                } else {
                                  compareMap.removeWhere((key, value) => key == element.id);
                                }
                              });
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: compareMap[element.id] != null ? Colors.blue : Colors.grey,
                                ),
                              ),
                              child: Icon(
                                Icons.check,
                                color: compareMap[element.id] != null ? Colors.blue : Colors.grey,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
          ls.add(SizedBox(height: 24));
        });
        return ls;
      }(),
    );
  }
}

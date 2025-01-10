import 'dart:js' as js;
import 'package:flutter/material.dart';

class CarouselCard extends StatelessWidget {
  final Map<String, String> params;
  final colorLeft;
  final size;

  const CarouselCard(
      {super.key, required this.params, this.colorLeft, this.size});

  @override
  Widget build(BuildContext context) {
    String imageName = params["image_path"] ?? "";
    String title = params["title"] ?? "No Title";
    String desc = params["description"] ?? "";
    String url = params["url"] ?? "";
    List<String> tools = params["tools"]?.split(",") ?? [""];
    Color backgroundColor = colorLeft ?? Colors.white;

    return MouseRegion(
      cursor: url == "" ? SystemMouseCursors.basic : SystemMouseCursors.click,
      child: GestureDetector(
        onTap: () => {
          if (url != "") js.context.callMethod('open', [url])
        },
        child: SizedBox(
          height: 300,
          width: 550,
          child: Card(
            elevation: 10,
            shape: RoundedRectangleBorder(
              side: BorderSide(color: Colors.black, width: 2),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: backgroundColor,
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(10),
                        bottomLeft: Radius.circular(10),
                      ),
                    ),
                    child: ClipRRect(
                      child: Align(
                        alignment: Alignment.center,
                        child: Transform.scale(
                          scale: size ?? 1,
                          child: Image.asset(
                            imageName,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 2.0,
                  color: Colors.black,
                  height: double.infinity,
                ),
                Expanded(
                  flex: 2,
                  child: Container(
                    width: double.infinity,
                    height: double.infinity,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(10),
                        bottomRight: Radius.circular(10),
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            title,
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 22,
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            desc,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            "Tools:",
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 22,
                            ),
                          ),
                          SizedBox(height: 10),
                          Row(
                            children: tools
                                .map(
                                  (tool) => Container(
                                    child: Padding(
                                      padding: EdgeInsets.all(10),
                                      child: Text(tool),
                                    ),
                                    height: 40,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(100),
                                      border: Border.all(
                                          color: Colors.black, width: 2),
                                    ),
                                  ),
                                )
                                .toList(),
                          ),
                        ],
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
  }
}

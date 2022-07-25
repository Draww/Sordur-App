import 'package:flutter/material.dart';

class DesktopScreen extends StatefulWidget {
  const DesktopScreen({Key? key}) : super(key: key);

  @override
  State<DesktopScreen> createState() => _DesktopScreenState();
}

class _DesktopScreenState extends State<DesktopScreen> {
  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    var pixRatio = MediaQuery.of(context).devicePixelRatio;
    return SafeArea(
      child: LayoutBuilder(
        builder: (context, constraints) {
          return Column(
            children: [
              Container(
                width: constraints.maxWidth,
                height: constraints.maxHeight * 12 / 100,
                padding: const EdgeInsets.only(top: 14.0, bottom: 14.0),
                child: Container(
                  padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                  child: LayoutBuilder(builder: (context, constraints) {
                    return Row(
                      children: [
                        Container(
                          width: constraints.maxWidth * 35 / 100,
                          alignment: Alignment.centerLeft,
                          child: Image.asset(
                            'assets/logo.png',
                            width: 80,
                          ),
                        ),
                        Container(
                          width: constraints.maxWidth * 65 / 100,
                          alignment: Alignment.centerRight,
                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                TextButton(
                                  onPressed: () {},
                                  child: const Text('Kayıt Ol'),
                                ),
                                const SizedBox(width: 6.0),
                                TextButton(
                                  onPressed: () {},
                                  child: const Text('Giriş Yap'),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    );
                  }),
                ),
              ),
              /*Flexible(
                child: SingleChildScrollView(
                  child: Container(
                    constraints: BoxConstraints(
                        minHeight:
                            (constraints.maxHeight * 25 / 100) / pixRatio),
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/banner.jpeg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Container(
                      padding: const EdgeInsets.only(top: 38.0, bottom: 38.0),
                      color: const Color.fromRGBO(0, 0, 0, 0.6),
                      child: Container(
                        margin: const EdgeInsets.only(left: 16.0, right: 16.0),
                        padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                        child: Row(
                          children: [
                            Expanded(
                              child: Text(
                                'Sordur; tamamen ücretsiz, dinamik bir soru sorma motorudur. Aşağıdaki yayınlanmış sordurları cevaplayabilir, isterseniz kendinizde sordur hazırlayıp yayınlayabilirsiniz.',
                                style: Theme.of(context)
                                    .textTheme
                                    .headline1!
                                    .copyWith(
                                      fontSize:
                                          constraints.maxWidth < 767 ? 30 : 36,
                                      fontWeight: FontWeight.w700,
                                      height: 1.2,
                                      color: Colors.white,
                                      fontFamily: 'Montserrat',
                                    ),
                                textAlign: constraints.maxWidth > 1000
                                    ? TextAlign.center
                                    : TextAlign.left,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),*/
            ],
          );
        },
      ),
    );
  }
}

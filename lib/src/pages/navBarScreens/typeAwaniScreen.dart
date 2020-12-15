import 'package:awani_app/src/widgets/productDetails.dart';
import 'package:flutter/material.dart';
import '../../widgets/awaniText.dart';
import '../../widgets/productCard.dart';

class TypeAwaniPage extends StatefulWidget {
  @override
  _TypeAwaniPageState createState() => _TypeAwaniPageState();
}

class _TypeAwaniPageState extends State<TypeAwaniPage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          physics: BouncingScrollPhysics(),
          child: Container(
            color: Color.fromRGBO(239, 243, 250, 1),
            //height: size.height,
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                Padding(
                  padding: EdgeInsets.only(top: 40.0, left: 159),
                  child: AwaniText('أواني الطهي', 20,
                      Color.fromRGBO(59, 79, 98, 1), FontWeight.bold),
                ),
                Container(
                  padding: EdgeInsets.only(top: 40.0, right: 22),
                  child: Icon(
                    Icons.arrow_forward,
                    color: Color.fromRGBO(59, 79, 98, 1),
                    size: 30,
                  ),
                ),
              ]),
              SizedBox(
                height: 20,
              ),
              Container(
                  child: GridView.count(
                shrinkWrap: true,
                physics: ClampingScrollPhysics(),
                primary: false,
                padding: const EdgeInsets.all(15),
                crossAxisSpacing: 15,
                mainAxisSpacing: 15,
                crossAxisCount: 2,
                children: <Widget>[
                  ProductCard('assets/grilla.png', 'مقلاة عميقة مع غطاء',
                      'GRILLA', 15, 4),
                  ProductCard('assets/amsinox.png', 'مصفاة معكرونة، 5 ل',
                      'AMS INOX', 30, 4),
                  InkWell(
                    onTap: () => showDialog(
                        context: context,
                        builder: (BuildContext context) => ProductDetails(
                            'IKEA 365+',
                            'assets/ikea.png',
                            'قدر مع غطاء، ستينلس ستيل 5 ل',
                            'متعة الطعام تستمر مع أواني الطبخ +IKEA 365 ستينلس ستيل حيث توزع الحرارة بانتظام على جميع السطح',
                            2)),
                    /*onTap: () => Navigator.of(context).push(MaterialPageRoute(
                        builder: (BuildContext context) => ProductDetails(
                            'IKEA 365+',
                            'assets/ikea.png',
                            'قدر مع غطاء، ستينلس ستيل 5 ل',
                            'متعة الطعام تستمر مع أواني الطبخ +IKEA 365 ستينلس ستيل حيث توزع الحرارة بانتظام على جميع السطح',
                            2))),*/
                    child: ProductCard('assets/ikea.png',
                        'قدر مع غطاء، ستينلس ستيل 5 ل', 'IKEA 365+', 30, 4),
                  ),
                  ProductCard('assets/kavalkad.png',
                      'قدر بمقبض، طقم من 3. أسود', 'KAVALKAD', 150, 4),
                  ProductCard('assets/hemlagad.png', 'طقم أواني طهي 6 قطع،أزرق',
                      'HEMLAGAD', 279, 4),
                  ProductCard('assets/sensuel.png', 'قدر مع غطاء، 5.5 ل',
                      'SENSUELL', 50, 4),
                  ProductCard('assets/tefal.png', 'كسرولة مع غطاء،5 ل', 'TEFAL',
                      179, 4),
                  ProductCard('assets/vardagen.png',
                      'قدر بمقبض مع غطاء،فولاذ مطلي', 'VARDAGEN', 85, 4),
                ],
              ))
            ]),
          ),
        ),
      ),
    );
  }
}

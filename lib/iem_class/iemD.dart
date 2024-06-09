// ignore: empty_constructor_bodies

class Iem {
  final List<String> imgPaths;
  final String name;
  final String bardname;
  int price;
  final String discp;
  //final String spec;
  final List<String> spec;
  int quantity;
  int quantityforcalcart;

  Iem(
      {required this.imgPaths,
      required this.name,
      required this.bardname,
      required this.price,
      required this.discp,
      required this.spec,
      required this.quantity,
      required this.quantityforcalcart});
}

List<Iem> iemlist = [
  Iem(
      imgPaths: [
        'lib/assets/images/IEM_Image/i2.png',
        'lib/assets/images/IEM_Image/i2.1.png',
        'lib/assets/images/IEM_Image/i2.2.png',
        'lib/assets/images/IEM_Image/i2.3.png',
        'lib/assets/images/IEM_Image/i2.4.png',
      ],
      name: "Moondrop Variations Tribrid In-Ear Headphones",
      bardname: "Moondrop",
      price: 580,
      discp:
          'The Moondrop Variations Tribrid In-Ear Monitor Headphone is the latest set of high-resolution in-ear monitors featuring an advanced tribrid driver combination. The pair houses a       premium five driver configuration housing dual Sonion EST drivers paired with dual midrange Balanced Armature drivers, and a 10mm large LCP diaphragm Dynamic driver. Moondrop has designed the pair with a 3D-printed medical-grade resin material cavity with sandblasted stainless steel face panels for a rich and premium look.',
      spec: [
        'Frequency response range: 9-40kHz (IEC61094, Free Field)',
        'Effective frequency response: 20-20kHz (IEC60318-4, -3dB)',
        'Sensitivity: 116dB/Vrms @1kHz',
        'Impedance: 15.2Ω @1kHz ± 15%',
        'THD:<1% @1kHz',
        'Transducer: 1DD+2BA+2EST',
        'Midrange: Softears-D-Mid-B (Customized mid-frequency composite balanced armature driver.)',
        'Bass: 10mm liquid crystal diaphragm composite copper inner-cavity dynamic driver',
        'Treble: SONION high-power electrostatic driver',
        'Cavity Material:  Stainless steel + medical-grade resin'
      ],
      quantity: 10,
      quantityforcalcart: 0),
  Iem(
      imgPaths: [
        'lib/assets/images/IEM_Image/i3.0.png',
        'lib/assets/images/IEM_Image/i3.1.jpg',
        'lib/assets/images/IEM_Image/i3.2.png',
        'lib/assets/images/IEM_Image/i3.4.png',
      ],
      name: "Sennheiser IE 900 In-Ear Headphones",
      bardname: "Sennheiser",
      price: 1499,
      discp:
          '''IE 900 - The precision-manufactured aluminum housing of the IE 900 faithfully protects the dynamic TrueResponse transducers at the heart of Sennheiser’s innovative X3R technology. Experience the peak of German audio engineering and manufacturing with earphones that deliver only the purest, most natural sound.''',
      spec: [
        'New benchmark in portable audio',
        'Ultimate precision & craftsmanship',
        'Made in Germany',
        'X3R technology: TrueResponse transducer combined with three Helmholtz resonator chambers and acoustic vortex',
        'Precision-milled and anodized aluminum housing',
        'Hand-assembled at Sennheiser´s headquarters',
        'Gold-plated Fidelity (+) MMCX connectors for improved stability',
        'Choice of para-aramid reinforced cables (2.5 mm, 3.5 mm, 4.4 mm)',
        'Adjustable ear hooks and choice of ear adapters including memory foam',
        'Frequency response: 5 Hz - 48,000 Hz',
        'THD: 0.05% (1 kHz, 94 dB)',
        'Impedance: 16 ohms '
      ],
      quantity: 3,
      quantityforcalcart: 0)
];

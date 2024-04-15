import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ideate_ai/config/routes/app_routes.dart';
import 'package:patterns_canvas/patterns_canvas.dart';

import 'widgets/logo.dart';

class GetStartedPage extends StatelessWidget {
  const GetStartedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Animate(
              onPlay: (controller) => controller.repeat(period: 10.seconds),
              effects: [
                ShimmerEffect(
                  angle: 0.7,
                  size: 0.3,
                  color: Colors.black.withOpacity(0.05),
                  duration: 4.seconds,
                  delay: 0.5.seconds,
                  curve: Curves.easeInOut,
                  blendMode: BlendMode.multiply,
                ),
              ],
              child: CustomPaint(
                size: MediaQuery.of(context).size,
                foregroundPainter: ContainerPatternPainter(),
              ),
            ),
          ),
          Positioned(
            top: -MediaQuery.of(context).size.height * 0.1,
            left: -MediaQuery.of(context).size.width * 0.1375,
            height: MediaQuery.of(context).size.height * 0.5,
            width: MediaQuery.of(context).size.width * 0.5,
            child: Animate(
              onPlay: (controller) => controller.repeat(),
              effects: [
                RotateEffect(
                  duration: 6.seconds,
                  begin: 0.0,
                  end: 1,
                  curve: Curves.easeInOut,
                )
              ],
              child: SvgPicture.asset(
                'assets/svgs/Purple.svg',
              ),
            ),
          ),
          Positioned(
            top: 0,
            right: -MediaQuery.of(context).size.width * 0.3,
            height: MediaQuery.of(context).size.height * 0.7,
            width: MediaQuery.of(context).size.width * 0.8,
            child: Animate(
              onPlay: (controller) => controller.repeat(),
              effects: [
                RotateEffect(
                  duration: 10.seconds,
                  begin: 0.0,
                  end: 1,
                  curve: Curves.slowMiddle,
                )
              ],
              child: SvgPicture.asset(
                'assets/svgs/Green.svg',
              ),
            ),
          ),
          Positioned(
            bottom: -MediaQuery.of(context).size.height * 0.15,
            left: -MediaQuery.of(context).size.width * 0.3,
            height: MediaQuery.of(context).size.height * 0.75,
            width: MediaQuery.of(context).size.width,
            child: Hero(
              tag: 'orange-bg',
              child: Animate(
                onPlay: (controller) => controller.repeat(),
                effects: [
                  RotateEffect(
                    duration: 4.seconds,
                    begin: 0.0,
                    end: 1,
                    curve: Curves.fastOutSlowIn,
                  )
                ],
                child: SvgPicture.asset(
                  'assets/svgs/Orange.svg',
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Animate(
                  delay: 0.75.seconds,
                  effects: [
                    ScaleEffect(
                      duration: 0.75.seconds,
                      curve: Curves.easeInOut,
                      begin: const Offset(0.8, 0.8),
                      end: const Offset(1.0, 1.0),
                    ),
                    SlideEffect(
                      duration: 0.75.seconds,
                      curve: Curves.easeInOut,
                      begin: const Offset(0.0, 0.1),
                      end: const Offset(0.0, 0.0),
                    ),
                    FadeEffect(
                      duration: 0.75.seconds,
                      curve: Curves.easeInOut,
                      begin: 0.0,
                      end: 1.0,
                    ),
                  ],
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 40,
                      vertical: 20,
                    ),
                    child: RichText(
                      text: TextSpan(
                        text: 'By Continuing, you agree to our ',
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                              color: Colors.grey[600],
                              fontSize: 12,
                            ),
                        children: [
                          TextSpan(
                            text: 'Terms of Service',
                            style:
                                Theme.of(context).textTheme.bodyLarge?.copyWith(
                                      color: Colors.blue,
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                    ),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                // TODO: Handle Terms of Service
                              },
                          ),
                          const TextSpan(text: ', '),
                          TextSpan(
                            text: 'Privacy Policy',
                            style:
                                Theme.of(context).textTheme.bodyLarge?.copyWith(
                                      color: Colors.blue,
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                    ),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                // TODO: Handle Privacy Policy
                              },
                          ),
                          const TextSpan(text: ' and '),
                          TextSpan(
                            text: 'Cookie Policy',
                            style:
                                Theme.of(context).textTheme.bodyLarge?.copyWith(
                                      color: Colors.blue,
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                    ),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                // TODO: Handle Cookie Policy
                              },
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: RichText(
                    text: TextSpan(
                      text: 'Powered by ',
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                            color: Colors.grey[600],
                            fontSize: 12,
                          ),
                      children: const [
                        TextSpan(
                          text: 'CodeAlchemix',
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Hero(
                  tag: 'logo',
                  child: Logo(),
                ),
                const SizedBox(height: 20),
                Animate(
                  delay: 0.5.seconds,
                  effects: [
                    ScaleEffect(
                      duration: 0.5.seconds,
                      curve: Curves.easeInOut,
                      begin: const Offset(0.8, 0.8),
                      end: const Offset(1.0, 1.0),
                    ),
                    SlideEffect(
                      duration: 0.5.seconds,
                      curve: Curves.easeInOut,
                      begin: const Offset(0.0, 0.1),
                      end: const Offset(0.0, 0.0),
                    ),
                    FadeEffect(
                      duration: 0.5.seconds,
                      curve: Curves.easeInOut,
                      begin: 0.0,
                      end: 1.0,
                    ),
                  ],
                  child: Hero(
                    tag: 'title',
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width * 0.7,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 30),
                        child: Text(
                          'Brainstorming,\nEvolved.',
                          style: Theme.of(context)
                              .textTheme
                              .displayLarge
                              ?.copyWith(
                                color: Theme.of(context).colorScheme.primary,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 1.5,
                              ),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Animate(
                    delay: 0.65.seconds,
                    effects: [
                      ScaleEffect(
                        duration: 0.4.seconds,
                        curve: Curves.easeInOut,
                        begin: const Offset(0.8, 0.8),
                        end: const Offset(1.0, 1.0),
                      ),
                      SlideEffect(
                        duration: 0.4.seconds,
                        curve: Curves.easeInOut,
                        begin: const Offset(0.0, 0.1),
                        end: const Offset(0.0, 0.0),
                      ),
                      FadeEffect(
                        duration: 0.4.seconds,
                        curve: Curves.easeInOut,
                        begin: 0.0,
                        end: 1.0,
                      ),
                    ],
                    child: ElevatedButton(
                      onPressed: () {
                        // TODO: Handle Google Sign In
                      },
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                          side: BorderSide(
                            color: Theme.of(context).colorScheme.primary,
                          ),
                        ),
                        fixedSize: Size(
                          MediaQuery.of(context).size.width - 80,
                          50,
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 12.0,
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            SvgPicture.asset(
                              'assets/svgs/google.svg',
                              height: 28,
                            ),
                            const SizedBox(width: 8),
                            const Text("Continue with Google"),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Animate(
                    delay: 0.6.seconds,
                    effects: [
                      ScaleEffect(
                        duration: 0.4.seconds,
                        curve: Curves.easeInOut,
                        begin: const Offset(0.8, 0.8),
                        end: const Offset(1.0, 1.0),
                      ),
                      SlideEffect(
                        duration: 0.4.seconds,
                        curve: Curves.easeInOut,
                        begin: const Offset(0.0, 0.1),
                        end: const Offset(0.0, 0.0),
                      ),
                      FadeEffect(
                        duration: 0.4.seconds,
                        curve: Curves.easeInOut,
                        begin: 0.0,
                        end: 1.0,
                      ),
                    ],
                    child: ElevatedButton(
                      onPressed: () {
                        // TODO: Handle Facebook Sign In
                      },
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                          side: BorderSide(
                            color: Theme.of(context).colorScheme.primary,
                          ),
                        ),
                        fixedSize: Size(
                          MediaQuery.of(context).size.width - 80,
                          50,
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 12.0,
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            SvgPicture.asset(
                              'assets/svgs/facebook.svg',
                              height: 28,
                            ),
                            const SizedBox(width: 8),
                            const Text("Continue with Facebook"),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Animate(
                    delay: 0.7.seconds,
                    effects: [
                      ScaleEffect(
                        duration: 0.4.seconds,
                        curve: Curves.easeInOut,
                        begin: const Offset(0.8, 0.8),
                        end: const Offset(1.0, 1.0),
                      ),
                      SlideEffect(
                        duration: 0.4.seconds,
                        curve: Curves.easeInOut,
                        begin: const Offset(0.0, 0.1),
                        end: const Offset(0.0, 0.0),
                      ),
                      FadeEffect(
                        duration: 0.4.seconds,
                        curve: Curves.easeInOut,
                        begin: 0.0,
                        end: 1.0,
                      ),
                    ],
                    child: Hero(
                      tag: 'email',
                      child: ElevatedButton.icon(
                        onPressed: () {
                          Navigator.of(context).pushNamed(AppRoutes.email);
                          // TODO: Handle Email Sign In
                        },
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                            side: BorderSide(
                              color: Theme.of(context).colorScheme.primary,
                            ),
                          ),
                          fixedSize: Size(
                            MediaQuery.of(context).size.width - 80,
                            50,
                          ),
                        ),
                        icon: const Icon(CupertinoIcons.mail_solid),
                        label: const Padding(
                          padding: EdgeInsets.symmetric(
                            vertical: 14.0,
                          ),
                          child: Text("Continue with Email"),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ContainerPatternPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Crosshatch(
      fgColor: Colors.black.withOpacity(0.1),
      bgColor: Colors.white,
      featuresCount: 20,
    ).paintOnWidget(canvas, size);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}

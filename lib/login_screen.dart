import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    const cardSurface = Color(0xFF2A2F38);
    const mutedGray = Color(0xFF9CA3AF);
    const neonLime = Color(0xFFC8E600);

    return Scaffold(
      backgroundColor: theme.scaffoldBackgroundColor,
      body: SafeArea(
        child: SizedBox.expand(
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const SizedBox(height: 8),

                // Brand Label
                const Text(
                  'APEX - WORKOUT PLANNER',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 11,
                    fontWeight: FontWeight.w700,
                    color: mutedGray,
                    letterSpacing: 1.4,
                  ),
                ),
                const SizedBox(height: 10),

                // Main Headline
                Text(
                  'VOLUME UP YOUR\nBODY GOALS',
                  textAlign: TextAlign.center,
                  style: theme.textTheme.headlineSmall?.copyWith(height: 1.2),
                ),
                const SizedBox(height: 22),

                // 3-Column Training Showcase with Stack + Positioned Badge
                const Row(
                  children: [
                    Expanded(
                      child: _TrainingCard(
                        icon: Icons.fitness_center_rounded,
                        tag: 'STRENGTH',
                        accentColor: neonLime,
                      ),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: _TrainingCard(
                        icon: Icons.bolt_rounded,
                        tag: 'POWER',
                        accentColor: neonLime,
                      ),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: _TrainingCard(
                        icon: Icons.timer_rounded,
                        tag: 'STAMINA',
                        accentColor: neonLime,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 24),

                // Member Username Static Input
                const Text(
                  'MEMBER USERNAME',
                  style: TextStyle(
                    fontSize: 11,
                    fontWeight: FontWeight.w700,
                    color: mutedGray,
                    letterSpacing: 0.8,
                  ),
                ),
                const SizedBox(height: 8),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 14),
                  decoration: BoxDecoration(
                    color: cardSurface,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: const Text(
                    'Enter Member Username',
                    style: TextStyle(color: mutedGray, fontSize: 13.5),
                  ),
                ),
                const SizedBox(height: 16),

                // Password Static Input
                const Text(
                  'PASSWORD',
                  style: TextStyle(
                    fontSize: 11,
                    fontWeight: FontWeight.w700,
                    color: mutedGray,
                    letterSpacing: 0.8,
                  ),
                ),
                const SizedBox(height: 8),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 14),
                  decoration: BoxDecoration(
                    color: cardSurface,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: const Text(
                    'Enter Password',
                    style: TextStyle(color: mutedGray, fontSize: 13.5),
                  ),
                ),
                const SizedBox(height: 10),

                // Forgot Password Link
                const Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    'Forgot Password?',
                    style: TextStyle(
                      fontSize: 12,
                      color: mutedGray,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                const SizedBox(height: 24),

                // Primary Neon Lime LOGIN Button
                Container(
                  height: 50,
                  decoration: BoxDecoration(
                    color: neonLime,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    'LOGIN',
                    style: theme.textTheme.labelLarge,
                  ),
                ),
                const SizedBox(height: 18),

                // Register Caption
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "DON'T HAVE ANY ACCOUNT? ",
                      style: TextStyle(
                        fontSize: 11,
                        color: mutedGray,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      'CREATE ACCOUNT',
                      style: TextStyle(
                        fontSize: 11,
                        color: neonLime,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _TrainingCard extends StatelessWidget {
  const _TrainingCard({
    required this.icon,
    required this.tag,
    required this.accentColor,
  });

  final IconData icon;
  final String tag;
  final Color accentColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 142,
      decoration: BoxDecoration(
        color: const Color(0xFF2A2F38),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Stack(
        children: [
          Center(
            child: Icon(icon, size: 42, color: Colors.white70),
          ),
          Positioned(
            left: 10,
            bottom: 10,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 3),
              decoration: BoxDecoration(
                color: accentColor,
                borderRadius: BorderRadius.circular(6),
              ),
              child: Text(
                tag,
                style: const TextStyle(
                  fontSize: 9.5,
                  fontWeight: FontWeight.w900,
                  color: Color(0xFF14171C),
                  letterSpacing: 0.4,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
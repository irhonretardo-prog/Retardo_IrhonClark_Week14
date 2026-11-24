import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

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
          child: Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 14),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Member Header Row with Stack Status Badge
                      Row(
                        children: [
                          Stack(
                            clipBehavior: Clip.none,
                            children: [
                              Container(
                                width: 44,
                                height: 44,
                                decoration: const BoxDecoration(
                                  color: cardSurface,
                                  shape: BoxShape.circle,
                                ),
                                child: const Icon(
                                  Icons.person_rounded,
                                  color: Colors.white,
                                  size: 24,
                                ),
                              ),
                              Positioned(
                                bottom: 0,
                                right: 0,
                                child: Container(
                                  width: 12,
                                  height: 12,
                                  decoration: BoxDecoration(
                                    color: neonLime,
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                      color: const Color(0xFF1E2229),
                                      width: 2,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(width: 12),
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'WELCOME BACK,',
                                style: TextStyle(
                                  fontSize: 10.5,
                                  fontWeight: FontWeight.w700,
                                  color: mutedGray,
                                  letterSpacing: 0.8,
                                ),
                              ),
                              SizedBox(height: 2),
                              Text(
                                'MICHAEL BERNANDO',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w900,
                                  color: Colors.white,
                                  letterSpacing: 0.3,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(height: 18),

                      // 3 Metric Cards Row (Steps, Cal Burn, Heartbeat)
                      const Row(
                        children: [
                          Expanded(
                            child: _MetricBox(
                              icon: Icons.directions_walk_rounded,
                              value: '6.359',
                              label: 'STEPS',
                              accentColor: neonLime,
                            ),
                          ),
                          SizedBox(width: 10),
                          Expanded(
                            child: _MetricBox(
                              icon: Icons.local_fire_department_rounded,
                              value: '3.115 KCAL',
                              label: 'CAL BURN',
                              accentColor: neonLime,
                            ),
                          ),
                          SizedBox(width: 10),
                          Expanded(
                            child: _MetricBox(
                              icon: Icons.favorite_border_rounded,
                              value: '123 BPM',
                              label: 'HEARTBEAT',
                              accentColor: neonLime,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 16),

                      // Calories Weekly Bar Card
                      Container(
                        padding: const EdgeInsets.all(14),
                        decoration: BoxDecoration(
                          color: cardSurface,
                          borderRadius: BorderRadius.circular(14),
                        ),
                        child: const Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'CALORIES',
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w800,
                                    color: Colors.white,
                                    letterSpacing: 0.6,
                                  ),
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Text(
                                      'WEEKLY AVERAGE',
                                      style: TextStyle(
                                        fontSize: 9.5,
                                        fontWeight: FontWeight.w700,
                                        color: mutedGray,
                                        letterSpacing: 0.5,
                                      ),
                                    ),
                                    SizedBox(height: 2),
                                    Text(
                                      '102 CAL',
                                      style: TextStyle(
                                        fontSize: 12.5,
                                        fontWeight: FontWeight.w800,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(height: 16),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                _DayBar(day: 'SUN', height: 22, isHighlighted: false),
                                _DayBar(day: 'MON', height: 34, isHighlighted: false),
                                _DayBar(day: 'TUE', height: 64, isHighlighted: true),
                                _DayBar(day: 'WED', height: 28, isHighlighted: false),
                                _DayBar(day: 'THU', height: 32, isHighlighted: false),
                                _DayBar(day: 'FRI', height: 14, isHighlighted: false),
                                _DayBar(day: 'SAT', height: 12, isHighlighted: false),
                              ],
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 18),

                      // Personalized Plan Header
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'PERSONALIZED PLAN',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w800,
                              color: Colors.white,
                              letterSpacing: 0.6,
                            ),
                          ),
                          Text(
                            'VIEW ALL',
                            style: TextStyle(
                              fontSize: 10.5,
                              fontWeight: FontWeight.w700,
                              color: mutedGray,
                              letterSpacing: 0.5,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),

                      // Personalized Plan Banner with Image.asset() + Stack Text Overlay
                      ClipRRect(
                        borderRadius: BorderRadius.circular(14),
                        child: SizedBox(
                          height: 112,
                          width: double.infinity,
                          child: Stack(
                            fit: StackFit.expand,
                            children: [
                              Image.asset(
                                'assets/images/apex_member.png',
                                fit: BoxFit.cover,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    begin: Alignment.centerLeft,
                                    end: Alignment.centerRight,
                                    colors: [
                                      const Color(0xFF14171C).withValues(alpha: 0.92),
                                      const Color(0xFF14171C).withValues(alpha: 0.45),
                                    ],
                                  ),
                                ),
                              ),
                              const Positioned(
                                left: 16,
                                bottom: 16,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'CHEST\nWORKOUT',
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w900,
                                        color: Colors.white,
                                        height: 1.15,
                                      ),
                                    ),
                                    SizedBox(height: 6),
                                    Text(
                                      '5-8 MIN',
                                      style: TextStyle(
                                        fontSize: 11,
                                        fontWeight: FontWeight.w700,
                                        color: neonLime,
                                        letterSpacing: 0.6,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              // Static Bottom Navigation Bar
              Container(
                padding: const EdgeInsets.symmetric(vertical: 14),
                decoration: const BoxDecoration(
                  color: Color(0xFF16191F),
                  border: Border(
                    top: BorderSide(color: Color(0xFF2A2F38), width: 1),
                  ),
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Icon(Icons.grid_view_rounded, color: neonLime, size: 22),
                    Icon(Icons.pie_chart_outline_rounded, color: Color(0xFF6B7280), size: 22),
                    Icon(Icons.description_outlined, color: Color(0xFF6B7280), size: 22),
                    Icon(Icons.settings_outlined, color: Color(0xFF6B7280), size: 22),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _MetricBox extends StatelessWidget {
  const _MetricBox({
    required this.icon,
    required this.value,
    required this.label,
    required this.accentColor,
  });

  final IconData icon;
  final String value;
  final String label;
  final Color accentColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 8),
      decoration: BoxDecoration(
        color: const Color(0xFF2A2F38),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          Icon(icon, color: accentColor, size: 20),
          const SizedBox(height: 8),
          Text(
            value,
            style: const TextStyle(
              fontSize: 12.5,
              fontWeight: FontWeight.w800,
              color: Colors.white,
            ),
            overflow: TextOverflow.ellipsis,
          ),
          const SizedBox(height: 3),
          Text(
            label,
            style: const TextStyle(
              fontSize: 9.5,
              fontWeight: FontWeight.w700,
              color: Color(0xFF9CA3AF),
              letterSpacing: 0.5,
            ),
          ),
        ],
      ),
    );
  }
}

class _DayBar extends StatelessWidget {
  const _DayBar({
    required this.day,
    required this.height,
    required this.isHighlighted,
  });

  final String day;
  final double height;
  final bool isHighlighted;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          width: 14,
          height: height,
          decoration: BoxDecoration(
            color: isHighlighted ? const Color(0xFFC8E600) : const Color(0xFF4B5563),
            borderRadius: BorderRadius.circular(6),
          ),
        ),
        const SizedBox(height: 8),
        Text(
          day,
          style: TextStyle(
            fontSize: 9.5,
            fontWeight: isHighlighted ? FontWeight.w800 : FontWeight.w600,
            color: isHighlighted ? const Color(0xFFC8E600) : const Color(0xFF9CA3AF),
          ),
        ),
      ],
    );
  }
}
import 'package:flutter/material.dart';

void main() {
  runApp(const CampusEventsApp());
}

// ============================================================
// COLORS
// ============================================================

const Color black = Color(0xFF111111);
const Color green = Color(0xFF00C853);
const Color darkGreen = Color(0xFF009624);
const Color lightGreen = Color(0xFFE8F5E9);
const Color bg = Color(0xFFF3F7F4);
const Color red = Color(0xFFD32F2F);
const Color orange = Color(0xFFFF9800);

// ============================================================
// APP
// ============================================================

class CampusEventsApp extends StatelessWidget {
  const CampusEventsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Campus Events',
      theme: ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: bg,
        colorScheme: ColorScheme.fromSeed(
          seedColor: green,
          brightness: Brightness.light,
        ),
        appBarTheme: const AppBarTheme(
          backgroundColor: black,
          foregroundColor: Colors.white,
          elevation: 0,
        ),
        cardTheme: CardThemeData(
          color: Colors.white,
          elevation: 2,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18),
          ),
        ),
        inputDecorationTheme: InputDecorationTheme(
          filled: true,
          fillColor: Colors.white,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(14),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(14),
            borderSide: const BorderSide(color: Colors.black12),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(14),
            borderSide: const BorderSide(
              color: green,
              width: 2,
            ),
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: green,
            foregroundColor: black,
            minimumSize: const Size(double.infinity, 52),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(14),
            ),
            textStyle: const TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      home: const WelcomeScreen(),
    );
  }
}

// ============================================================
// MODELS
// ============================================================

class Program {
  String id;
  String name;
  String description;
  String date;
  String time;
  String venue;
  double fee;
  int capacity;

  Program({
    required this.id,
    required this.name,
    required this.description,
    required this.date,
    required this.time,
    required this.venue,
    required this.fee,
    required this.capacity,
  });
}

class EventModel {
  String id;
  String title;
  String description;
  String date;
  String time;
  String venue;
  String organizer;
  String category;
  String status;
  List<Program> programs;
  int registeredStudents;

  EventModel({
    required this.id,
    required this.title,
    required this.description,
    required this.date,
    required this.time,
    required this.venue,
    required this.organizer,
    required this.category,
    required this.status,
    required this.programs,
    this.registeredStudents = 0,
  });
}

class Registration {
  final String studentName;
  final String studentEmail;
  final String eventTitle;
  final String programName;
  final String date;
  final String time;
  final String venue;
  final double amount;
  final String paymentMethod;

  Registration({
    required this.studentName,
    required this.studentEmail,
    required this.eventTitle,
    required this.programName,
    required this.date,
    required this.time,
    required this.venue,
    required this.amount,
    required this.paymentMethod,
  });
}

// ============================================================
// SAMPLE DATA
// ============================================================

final List<EventModel> events = [
  EventModel(
    id: 'E001',
    title: 'TechnoFest 2026',
    description:
    'A three-day technical and cultural college fest with exciting competitions, workshops and entertainment.',
    date: '25 August 2026',
    time: '9:00 AM - 7:00 PM',
    venue: 'Main Auditorium',
    organizer: 'Computer Science Department',
    category: 'Technical Fest',
    status: 'Approved',
    registeredStudents: 128,
    programs: [
      Program(
        id: 'P001',
        name: 'Coding Challenge',
        description:
        'Competitive programming challenge for students.',
        date: '25 August 2026',
        time: '10:00 AM - 12:00 PM',
        venue: 'Computer Lab 1',
        fee: 100,
        capacity: 100,
      ),
      Program(
        id: 'P002',
        name: 'Quiz Competition',
        description:
        'Technology, science and general knowledge quiz.',
        date: '25 August 2026',
        time: '2:00 PM - 3:30 PM',
        venue: 'Seminar Hall',
        fee: 50,
        capacity: 80,
      ),
      Program(
        id: 'P003',
        name: 'Dance Competition',
        description: 'Solo and group dance competition.',
        date: '26 August 2026',
        time: '5:00 PM - 7:00 PM',
        venue: 'Open Stage',
        fee: 150,
        capacity: 60,
      ),
      Program(
        id: 'P004',
        name: 'Singing Competition',
        description: 'Show your singing talent.',
        date: '27 August 2026',
        time: '4:00 PM - 6:00 PM',
        venue: 'Main Auditorium',
        fee: 100,
        capacity: 50,
      ),
    ],
  ),
  EventModel(
    id: 'E002',
    title: 'Cultural Fest 2026',
    description:
    'An exciting cultural fest featuring music, dance, drama and creative performances.',
    date: '5 September 2026',
    time: '10:00 AM - 8:00 PM',
    venue: 'College Ground',
    organizer: 'Student Cultural Club',
    category: 'Cultural Fest',
    status: 'Approved',
    registeredStudents: 96,
    programs: [
      Program(
        id: 'P005',
        name: 'Solo Singing',
        description: 'Solo vocal performance.',
        date: '5 September 2026',
        time: '11:00 AM - 1:00 PM',
        venue: 'Cultural Stage',
        fee: 100,
        capacity: 50,
      ),
      Program(
        id: 'P006',
        name: 'Group Dance',
        description: 'Group dance performance.',
        date: '5 September 2026',
        time: '4:00 PM - 6:00 PM',
        venue: 'College Ground',
        fee: 200,
        capacity: 100,
      ),
      Program(
        id: 'P007',
        name: 'Drama',
        description: 'Short drama and theatre competition.',
        date: '6 September 2026',
        time: '5:00 PM - 7:00 PM',
        venue: 'Main Auditorium',
        fee: 100,
        capacity: 60,
      ),
    ],
  ),
  EventModel(
    id: 'E003',
    title: 'Innovation Summit',
    description: 'Innovation, startup and project exhibition.',
    date: '15 September 2026',
    time: '9:30 AM - 5:00 PM',
    venue: 'Innovation Center',
    organizer: 'Innovation Club',
    category: 'Innovation',
    status: 'Pending',
    programs: [
      Program(
        id: 'P008',
        name: 'Project Expo',
        description: 'Present your innovative project.',
        date: '15 September 2026',
        time: '10:00 AM - 1:00 PM',
        venue: 'Innovation Center',
        fee: 0,
        capacity: 100,
      ),
    ],
  ),
];

final List<Registration> registrations = [];

final List<String> notifications = [
  'TechnoFest 2026 registration is now open.',
  'Cultural Fest 2026 has new programs.',
];

// ============================================================
// COMMON WIDGETS
// ============================================================

Widget sectionTitle(String title, {String? subtitle}) {
  return Padding(
    padding: const EdgeInsets.only(bottom: 14),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: black,
          ),
        ),
        if (subtitle != null) ...[
          const SizedBox(height: 4),
          Text(
            subtitle,
            style: const TextStyle(
              color: Colors.black54,
            ),
          ),
        ],
      ],
    ),
  );
}

Widget infoRow(
    IconData icon,
    String title,
    String value,
    ) {
  return Padding(
    padding: const EdgeInsets.only(bottom: 10),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(
          icon,
          size: 20,
          color: darkGreen,
        ),
        const SizedBox(width: 10),
        Expanded(
          child: RichText(
            text: TextSpan(
              style: const TextStyle(
                color: Colors.black87,
              ),
              children: [
                TextSpan(
                  text: '$title: ',
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextSpan(text: value),
              ],
            ),
          ),
        ),
      ],
    ),
  );
}

Widget statCard(
    String title,
    String value,
    IconData icon,
    Color color,
    ) {
  return Card(
    child: ListTile(
      leading: CircleAvatar(
        backgroundColor: color.withOpacity(.12),
        child: Icon(
          icon,
          color: color,
        ),
      ),
      title: Text(title),
      trailing: Text(
        value,
        style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
          color: color,
        ),
      ),
    ),
  );
}

// ============================================================
// WELCOME
// ============================================================

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(28),
          child: Column(
            children: [
              const Spacer(),

              Container(
                width: 115,
                height: 115,
                decoration: BoxDecoration(
                  color: black,
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: [
                    BoxShadow(
                      color: green.withOpacity(.25),
                      blurRadius: 25,
                      offset: const Offset(0, 10),
                    ),
                  ],
                ),
                child: const Icon(
                  Icons.event_available_rounded,
                  size: 65,
                  color: green,
                ),
              ),

              const SizedBox(height: 30),

              const Text(
                'CAMPUS EVENTS',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w900,
                  color: black,
                  letterSpacing: 1,
                ),
              ),

              const SizedBox(height: 10),

              const Text(
                'Discover. Register. Participate.',
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                  color: darkGreen,
                ),
              ),

              const SizedBox(height: 18),

              const Text(
                'Find college fests, competitions, programs, '
                    'workshops and events in one place.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black54,
                  height: 1.5,
                ),
              ),

              const Spacer(),

              SizedBox(
                width: double.infinity,
                height: 55,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => const LoginScreen(),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: black,
                    foregroundColor: green,
                  ),
                  child: const Text(
                    'Get Started',
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 20),

              const Text(
                'Your college. Your events. Your experience.',
                style: TextStyle(
                  color: Colors.black45,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// ============================================================
// LOGIN
// ============================================================

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final formKey = GlobalKey<FormState>();

  final email = TextEditingController();
  final password = TextEditingController();

  String role = 'Student';
  bool obscure = true;

  @override
  void dispose() {
    email.dispose();
    password.dispose();
    super.dispose();
  }

  void login() {
    if (!formKey.currentState!.validate()) return;

    if (role == 'Student') {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (_) => const StudentDashboard(),
        ),
      );
    } else if (role == 'Organizer') {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (_) => const OrganizerDashboard(),
        ),
      );
    } else {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (_) => const AdminDashboard(),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bg,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(24),
            child: ConstrainedBox(
              constraints: const BoxConstraints(
                maxWidth: 500,
              ),
              child: Column(
                children: [
                  Container(
                    width: 85,
                    height: 85,
                    decoration: BoxDecoration(
                      color: black,
                      borderRadius: BorderRadius.circular(24),
                    ),
                    child: const Icon(
                      Icons.event_available,
                      size: 48,
                      color: green,
                    ),
                  ),

                  const SizedBox(height: 20),

                  const Text(
                    'Campus Events',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w900,
                    ),
                  ),

                  const SizedBox(height: 6),

                  const Text(
                    'Login to your account',
                    style: TextStyle(
                      color: Colors.black54,
                    ),
                  ),

                  const SizedBox(height: 25),

                  Card(
                    elevation: 5,
                    child: Padding(
                      padding: const EdgeInsets.all(22),
                      child: Form(
                        key: formKey,
                        child: Column(
                          crossAxisAlignment:
                          CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Welcome Back 👋',
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                              ),
                            ),

                            const SizedBox(height: 5),

                            const Text(
                              'Select your role and login.',
                              style: TextStyle(
                                color: Colors.black54,
                              ),
                            ),

                            const SizedBox(height: 25),

                            const Text(
                              'Login as',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),

                            const SizedBox(height: 8),

                            DropdownButtonFormField<String>(
                              initialValue: role,
                              decoration: const InputDecoration(
                                prefixIcon: Icon(
                                  Icons.badge_outlined,
                                ),
                              ),
                              items: const [
                                DropdownMenuItem(
                                  value: 'Student',
                                  child: Text('Student'),
                                ),
                                DropdownMenuItem(
                                  value: 'Organizer',
                                  child: Text('Organizer'),
                                ),
                                DropdownMenuItem(
                                  value: 'Admin',
                                  child: Text('Admin'),
                                ),
                              ],
                              onChanged: (value) {
                                if (value != null) {
                                  setState(() {
                                    role = value;
                                  });
                                }
                              },
                            ),

                            const SizedBox(height: 18),

                            const Text(
                              'College Email',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),

                            const SizedBox(height: 8),

                            TextFormField(
                              controller: email,
                              keyboardType:
                              TextInputType.emailAddress,
                              decoration: const InputDecoration(
                                hintText:
                                'student@college.edu',
                                prefixIcon: Icon(
                                  Icons.email_outlined,
                                ),
                              ),
                              validator: (value) {
                                if (value == null ||
                                    value.trim().isEmpty) {
                                  return 'Enter email';
                                }

                                if (!value.contains('@')) {
                                  return 'Enter valid email';
                                }

                                return null;
                              },
                            ),

                            const SizedBox(height: 18),

                            const Text(
                              'Password',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),

                            const SizedBox(height: 8),

                            TextFormField(
                              controller: password,
                              obscureText: obscure,
                              decoration: InputDecoration(
                                hintText: 'Enter password',
                                prefixIcon: const Icon(
                                  Icons.lock_outline,
                                ),
                                suffixIcon: IconButton(
                                  onPressed: () {
                                    setState(() {
                                      obscure = !obscure;
                                    });
                                  },
                                  icon: Icon(
                                    obscure
                                        ? Icons.visibility_outlined
                                        : Icons
                                        .visibility_off_outlined,
                                  ),
                                ),
                              ),
                              validator: (value) {
                                if (value == null ||
                                    value.isEmpty) {
                                  return 'Enter password';
                                }

                                if (value.length < 6) {
                                  return 'Minimum 6 characters';
                                }

                                return null;
                              },
                            ),

                            const SizedBox(height: 25),

                            SizedBox(
                              width: double.infinity,
                              height: 54,
                              child: ElevatedButton.icon(
                                onPressed: login,
                                icon: const Icon(Icons.login),
                                label: const Text('Login'),
                              ),
                            ),

                            const SizedBox(height: 15),

                            Container(
                              padding: const EdgeInsets.all(12),
                              decoration: BoxDecoration(
                                color: lightGreen,
                                borderRadius:
                                BorderRadius.circular(12),
                              ),
                              child: const Text(
                                'Demo app: Use any valid email and '
                                    '6+ character password.',
                                style: TextStyle(
                                  color: darkGreen,
                                  fontSize: 12,
                                ),
                              ),
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
      ),
    );
  }
}

// ============================================================
// STUDENT DASHBOARD
// ============================================================

class StudentDashboard extends StatefulWidget {
  const StudentDashboard({super.key});

  @override
  State<StudentDashboard> createState() =>
      _StudentDashboardState();
}

class _StudentDashboardState extends State<StudentDashboard> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    final pages = [
      StudentHome(
        refresh: () => setState(() {}),
      ),
      const MyRegistrationsScreen(),
      const NotificationsScreen(),
      const ProfileScreen(role: 'Student'),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Student Dashboard'),
      ),
      body: pages[index],
      bottomNavigationBar: NavigationBar(
        backgroundColor: black,
        indicatorColor: green,
        selectedIndex: index,
        onDestinationSelected: (value) {
          setState(() {
            index = value;
          });
        },
        destinations: const [
          NavigationDestination(
            icon: Icon(
              Icons.home_outlined,
              color: Colors.white,
            ),
            selectedIcon: Icon(Icons.home),
            label: 'Home',
          ),
          NavigationDestination(
            icon: Icon(
              Icons.assignment_outlined,
              color: Colors.white,
            ),
            selectedIcon: Icon(Icons.assignment),
            label: 'Registrations',
          ),
          NavigationDestination(
            icon: Icon(
              Icons.notifications_outlined,
              color: Colors.white,
            ),
            selectedIcon: Icon(Icons.notifications),
            label: 'Notifications',
          ),
          NavigationDestination(
            icon: Icon(
              Icons.person_outline,
              color: Colors.white,
            ),
            selectedIcon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}

// ============================================================
// STUDENT HOME
// ============================================================

class StudentHome extends StatelessWidget {
  final VoidCallback refresh;

  const StudentHome({
    super.key,
    required this.refresh,
  });

  @override
  Widget build(BuildContext context) {
    final approved = events
        .where((e) => e.status == 'Approved')
        .toList();

    return RefreshIndicator(
      onRefresh: () async => refresh(),
      child: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          const Text(
            'Welcome Student 👋',
            style: TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 5),

          const Text(
            'Discover upcoming events and fests.',
            style: TextStyle(color: Colors.black54),
          ),

          const SizedBox(height: 25),

          sectionTitle(
            'Upcoming Events & Fests',
            subtitle: '${approved.length} events available',
          ),

          ...approved.map(
                (event) => EventCard(event: event),
          ),
        ],
      ),
    );
  }
}

// ============================================================
// EVENT CARD
// ============================================================

class EventCard extends StatelessWidget {
  final EventModel event;

  const EventCard({
    super.key,
    required this.event,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        borderRadius: BorderRadius.circular(18),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (_) =>
                  EventDetailsScreen(event: event),
            ),
          );
        },
        child: Padding(
          padding: const EdgeInsets.all(17),
          child: Column(
            crossAxisAlignment:
            CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Expanded(
                    child: Text(
                      event.title,
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 6,
                    ),
                    decoration: BoxDecoration(
                      color: lightGreen,
                      borderRadius:
                      BorderRadius.circular(20),
                    ),
                    child: Text(
                      event.category,
                      style: const TextStyle(
                        color: darkGreen,
                        fontSize: 11,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 12),

              Text(
                event.description,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  color: Colors.black54,
                ),
              ),

              const SizedBox(height: 15),

              infoRow(
                Icons.calendar_month,
                'Date',
                event.date,
              ),

              infoRow(
                Icons.access_time,
                'Time',
                event.time,
              ),

              infoRow(
                Icons.location_on,
                'Venue',
                event.venue,
              ),

              infoRow(
                Icons.event_note,
                'Programs',
                '${event.programs.length} programs',
              ),

              const SizedBox(height: 5),

              SizedBox(
                width: double.infinity,
                child: ElevatedButton.icon(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) =>
                            EventDetailsScreen(
                              event: event,
                            ),
                      ),
                    );
                  },
                  icon: const Icon(
                    Icons.arrow_forward,
                  ),
                  label: const Text(
                    'View Event & Programs',
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// ============================================================
// EVENT DETAILS
// ============================================================

class EventDetailsScreen extends StatelessWidget {
  final EventModel event;

  const EventDetailsScreen({
    super.key,
    required this.event,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Event Details'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Text(
            event.title,
            style: const TextStyle(
              fontSize: 29,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 8),

          Text(
            event.category,
            style: const TextStyle(
              color: darkGreen,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 15),

          Text(
            event.description,
            style: const TextStyle(
              fontSize: 16,
              height: 1.5,
            ),
          ),

          const SizedBox(height: 20),

          Card(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  infoRow(
                    Icons.calendar_month,
                    'Date',
                    event.date,
                  ),
                  infoRow(
                    Icons.access_time,
                    'Time',
                    event.time,
                  ),
                  infoRow(
                    Icons.location_on,
                    'Venue',
                    event.venue,
                  ),
                  infoRow(
                    Icons.person,
                    'Organizer',
                    event.organizer,
                  ),
                ],
              ),
            ),
          ),

          const SizedBox(height: 20),

          sectionTitle(
            'Programs',
            subtitle:
            'Choose a program and register.',
          ),

          ...event.programs.map(
                (program) => ProgramCard(
              event: event,
              program: program,
            ),
          ),
        ],
      ),
    );
  }
}

// ============================================================
// PROGRAM CARD
// ============================================================

class ProgramCard extends StatelessWidget {
  final EventModel event;
  final Program program;

  const ProgramCard({
    super.key,
    required this.event,
    required this.program,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment:
          CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const CircleAvatar(
                  backgroundColor: lightGreen,
                  child: Icon(
                    Icons.emoji_events,
                    color: darkGreen,
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Text(
                    program.name,
                    style: const TextStyle(
                      fontSize: 19,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 12),

            Text(
              program.description,
              style: const TextStyle(
                color: Colors.black54,
              ),
            ),

            const SizedBox(height: 14),

            infoRow(
              Icons.calendar_today,
              'Date',
              program.date,
            ),

            infoRow(
              Icons.access_time,
              'Time',
              program.time,
            ),

            infoRow(
              Icons.location_on,
              'Venue',
              program.venue,
            ),

            infoRow(
              Icons.people,
              'Capacity',
              '${program.capacity} students',
            ),

            infoRow(
              Icons.currency_rupee,
              'Fee',
              program.fee == 0
                  ? 'FREE'
                  : '₹${program.fee.toStringAsFixed(0)}',
            ),

            const SizedBox(height: 5),

            ElevatedButton.icon(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => PaymentScreen(
                      event: event,
                      program: program,
                    ),
                  ),
                );
              },
              icon: const Icon(
                Icons.app_registration,
              ),
              label: const Text(
                'Register Now',
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// ============================================================
// PAYMENT
// ============================================================

class PaymentScreen extends StatefulWidget {
  final EventModel event;
  final Program program;

  const PaymentScreen({
    super.key,
    required this.event,
    required this.program,
  });

  @override
  State<PaymentScreen> createState() =>
      _PaymentScreenState();
}

class _PaymentScreenState
    extends State<PaymentScreen> {
  String method = 'UPI';

  final upi = TextEditingController();
  final card = TextEditingController();

  @override
  void dispose() {
    upi.dispose();
    card.dispose();
    super.dispose();
  }

  void register() {
    if (widget.program.fee > 0) {
      if (method == 'UPI' &&
          upi.text.trim().isEmpty) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Enter UPI ID'),
          ),
        );
        return;
      }

      if (method == 'Card' &&
          card.text.trim().length < 4) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Enter card number'),
          ),
        );
        return;
      }
    }

    registrations.add(
      Registration(
        studentName: 'Student User',
        studentEmail: 'student@college.edu',
        eventTitle: widget.event.title,
        programName: widget.program.name,
        date: widget.program.date,
        time: widget.program.time,
        venue: widget.program.venue,
        amount: widget.program.fee,
        paymentMethod:
        widget.program.fee == 0
            ? 'FREE'
            : method,
      ),
    );

    widget.event.registeredStudents++;

    notifications.insert(
      0,
      'Successfully registered for ${widget.program.name}.',
    );

    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (_) => AlertDialog(
        title: const Text(
          'Registration Successful 🎉',
        ),
        content: Text(
          'Program: ${widget.program.name}\n\n'
              'Date: ${widget.program.date}\n'
              'Time: ${widget.program.time}\n'
              'Venue: ${widget.program.venue}\n\n'
              'Payment: ${widget.program.fee == 0 ? "FREE" : method}',
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context);
              Navigator.pop(context);
            },
            child: const Text('Done'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final amount = widget.program.fee;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Registration & Payment'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(18),
        children: [
          Text(
            widget.program.name,
            style: const TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 5),

          Text(widget.event.title),

          const SizedBox(height: 18),

          Card(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  infoRow(
                    Icons.calendar_month,
                    'Date',
                    widget.program.date,
                  ),
                  infoRow(
                    Icons.access_time,
                    'Time',
                    widget.program.time,
                  ),
                  infoRow(
                    Icons.location_on,
                    'Venue',
                    widget.program.venue,
                  ),
                  infoRow(
                    Icons.currency_rupee,
                    'Amount',
                    amount == 0
                        ? 'FREE'
                        : '₹${amount.toStringAsFixed(0)}',
                  ),
                ],
              ),
            ),
          ),

          const SizedBox(height: 20),

          sectionTitle('Payment Method'),

          RadioListTile<String>(
            value: 'UPI',
            groupValue: method,
            title: const Text('UPI'),
            secondary: const Icon(
              Icons.account_balance,
            ),
            onChanged: (value) {
              if (value != null) {
                setState(() => method = value);
              }
            },
          ),

          RadioListTile<String>(
            value: 'Card',
            groupValue: method,
            title: const Text(
              'Credit / Debit Card',
            ),
            secondary: const Icon(
              Icons.credit_card,
            ),
            onChanged: (value) {
              if (value != null) {
                setState(() => method = value);
              }
            },
          ),

          RadioListTile<String>(
            value: 'Cash',
            groupValue: method,
            title: const Text(
              'Pay at College Counter',
            ),
            secondary: const Icon(
              Icons.money,
            ),
            onChanged: (value) {
              if (value != null) {
                setState(() => method = value);
              }
            },
          ),

          if (method == 'UPI' && amount > 0)
            TextField(
              controller: upi,
              decoration: const InputDecoration(
                labelText: 'UPI ID',
                hintText: 'student@upi',
                prefixIcon: Icon(Icons.payment),
              ),
            ),

          if (method == 'Card' && amount > 0)
            TextField(
              controller: card,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: 'Card Number',
                prefixIcon: Icon(
                  Icons.credit_card,
                ),
              ),
            ),

          const SizedBox(height: 25),

          SizedBox(
            height: 54,
            child: ElevatedButton.icon(
              onPressed: register,
              icon: const Icon(Icons.lock),
              label: Text(
                amount == 0
                    ? 'Complete Registration'
                    : 'Pay ₹${amount.toStringAsFixed(0)} & Register',
              ),
            ),
          ),

          const SizedBox(height: 12),

          const Text(
            'Demo payment UI. For real payments, connect a '
                'payment gateway such as Razorpay or Stripe.',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 12,
              color: Colors.black45,
            ),
          ),
        ],
      ),
    );
  }
}

// ============================================================
// MY REGISTRATIONS
// ============================================================

class MyRegistrationsScreen
    extends StatelessWidget {
  const MyRegistrationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        sectionTitle(
          'My Registrations',
          subtitle:
          '${registrations.length} registrations',
        ),

        if (registrations.isEmpty)
          const Card(
            child: Padding(
              padding: EdgeInsets.all(25),
              child: Center(
                child: Text(
                  'No registrations yet.\n'
                      'Explore events and register!',
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),

        ...registrations.map(
              (r) => Card(
            child: ListTile(
              leading: const CircleAvatar(
                backgroundColor: lightGreen,
                child: Icon(
                  Icons.confirmation_number,
                  color: darkGreen,
                ),
              ),
              title: Text(
                r.programName,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text(
                '${r.eventTitle}\n'
                    '${r.date} • ${r.time}\n'
                    '${r.venue}',
              ),
              isThreeLine: true,
              trailing: Text(
                r.amount == 0
                    ? 'FREE'
                    : '₹${r.amount.toStringAsFixed(0)}',
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  color: darkGreen,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

// ============================================================
// NOTIFICATIONS
// ============================================================

class NotificationsScreen
    extends StatelessWidget {
  const NotificationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        sectionTitle('Notifications'),

        ...notifications.map(
              (notification) => Card(
            child: ListTile(
              leading: const CircleAvatar(
                backgroundColor: lightGreen,
                child: Icon(
                  Icons.notifications,
                  color: darkGreen,
                ),
              ),
              title: Text(notification),
            ),
          ),
        ),
      ],
    );
  }
}

// ============================================================
// PROFILE
// ============================================================

class ProfileScreen extends StatelessWidget {
  final String role;

  const ProfileScreen({
    super.key,
    required this.role,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(20),
      children: [
        const SizedBox(height: 15),

        const CircleAvatar(
          radius: 52,
          backgroundColor: black,
          child: Icon(
            Icons.person,
            size: 55,
            color: green,
          ),
        ),

        const SizedBox(height: 15),

        const Center(
          child: Text(
            'Student User',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),

        Center(
          child: Text(
            role,
            style: const TextStyle(
              color: darkGreen,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),

        const SizedBox(height: 25),

        Card(
          child: Column(
            children: [
              const ListTile(
                leading: Icon(
                  Icons.email,
                  color: darkGreen,
                ),
                title: Text('College Email'),
                subtitle: Text(
                  'student@college.edu',
                ),
              ),
              const ListTile(
                leading: Icon(
                  Icons.phone,
                  color: darkGreen,
                ),
                title: Text('Phone'),
                subtitle: Text(
                  '+91 XXXXX XXXXX',
                ),
              ),
              const ListTile(
                leading: Icon(
                  Icons.school,
                  color: darkGreen,
                ),
                title: Text('Department'),
                subtitle: Text(
                  'Computer Science',
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

// ============================================================
// ORGANIZER DASHBOARD
// ============================================================

class OrganizerDashboard
    extends StatefulWidget {
  const OrganizerDashboard({super.key});

  @override
  State<OrganizerDashboard> createState() =>
      _OrganizerDashboardState();
}

class _OrganizerDashboardState
    extends State<OrganizerDashboard> {
  int index = 0;

  void refresh() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final pages = [
      OrganizerHome(refresh: refresh),
      OrganizerEvents(refresh: refresh),
      const OrganizerStats(),
      const ProfileScreen(role: 'Organizer'),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Organizer Dashboard',
        ),
      ),
      body: pages[index],
      bottomNavigationBar: NavigationBar(
        backgroundColor: black,
        indicatorColor: green,
        selectedIndex: index,
        onDestinationSelected: (value) {
          setState(() {
            index = value;
          });
        },
        destinations: const [
          NavigationDestination(
            icon: Icon(
              Icons.home_outlined,
              color: Colors.white,
            ),
            selectedIcon: Icon(Icons.home),
            label: 'Home',
          ),
          NavigationDestination(
            icon: Icon(
              Icons.event_outlined,
              color: Colors.white,
            ),
            selectedIcon: Icon(Icons.event),
            label: 'Events',
          ),
          NavigationDestination(
            icon: Icon(
              Icons.analytics_outlined,
              color: Colors.white,
            ),
            selectedIcon: Icon(Icons.analytics),
            label: 'Stats',
          ),
          NavigationDestination(
            icon: Icon(
              Icons.person_outline,
              color: Colors.white,
            ),
            selectedIcon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}

// ============================================================
// ORGANIZER HOME
// ============================================================

class OrganizerHome extends StatelessWidget {
  final VoidCallback refresh;

  const OrganizerHome({
    super.key,
    required this.refresh,
  });

  @override
  Widget build(BuildContext context) {
    final programs = events.fold<int>(
      0,
          (sum, e) => sum + e.programs.length,
    );

    final students = events.fold<int>(
      0,
          (sum, e) => sum + e.registeredStudents,
    );

    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        const Text(
          'Welcome Organizer 👋',
          style: TextStyle(
            fontSize: 26,
            fontWeight: FontWeight.bold,
          ),
        ),

        const SizedBox(height: 5),

        const Text(
          'Create and manage your college events.',
          style: TextStyle(
            color: Colors.black54,
          ),
        ),

        const SizedBox(height: 25),

        ElevatedButton.icon(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => EventEditorScreen(
                  onSaved: refresh,
                ),
              ),
            );
          },
          icon: const Icon(Icons.add),
          label: const Text(
            'Add Event / Fest',
          ),
        ),

        const SizedBox(height: 25),

        sectionTitle('Quick Overview'),

        statCard(
          'Total Events',
          events.length.toString(),
          Icons.event,
          green,
        ),

        statCard(
          'Total Programs',
          programs.toString(),
          Icons.list_alt,
          Colors.purple,
        ),

        statCard(
          'Registered Students',
          students.toString(),
          Icons.people,
          darkGreen,
        ),
      ],
    );
  }
}

// ============================================================
// ORGANIZER EVENTS
// ============================================================

class OrganizerEvents extends StatelessWidget {
  final VoidCallback refresh;

  const OrganizerEvents({
    super.key,
    required this.refresh,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        sectionTitle(
          'My Events',
          subtitle:
          'Create, edit, delete and manage programs.',
        ),

        ...events.map(
              (event) => Card(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment:
                CrossAxisAlignment.start,
                children: [
                  Text(
                    event.title,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 8),

                  Text(
                    '${event.date} • ${event.venue}',
                    style: const TextStyle(
                      color: Colors.black54,
                    ),
                  ),

                  const SizedBox(height: 10),

                  Row(
                    children: [
                      Chip(
                        label: Text(event.status),
                        backgroundColor:
                        event.status == 'Approved'
                            ? lightGreen
                            : const Color(
                          0xFFFFF3E0,
                        ),
                      ),
                      const SizedBox(width: 8),
                      Text(
                        '${event.programs.length} programs',
                      ),
                    ],
                  ),

                  const Divider(),

                  Wrap(
                    spacing: 8,
                    runSpacing: 8,
                    children: [
                      OutlinedButton.icon(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) =>
                                  EventEditorScreen(
                                    event: event,
                                    onSaved: refresh,
                                  ),
                            ),
                          );
                        },
                        icon: const Icon(Icons.edit),
                        label: const Text('Edit'),
                      ),

                      OutlinedButton.icon(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) =>
                                  ProgramManagerScreen(
                                    event: event,
                                    onChanged: refresh,
                                  ),
                            ),
                          );
                        },
                        icon: const Icon(Icons.list),
                        label: const Text('Programs'),
                      ),

                      OutlinedButton.icon(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) =>
                                  RegisteredStudentsScreen(
                                    event: event,
                                  ),
                            ),
                          );
                        },
                        icon: const Icon(Icons.people),
                        label: Text(
                          '${event.registeredStudents}',
                        ),
                      ),

                      OutlinedButton.icon(
                        onPressed: () {
                          showDialog(
                            context: context,
                            builder: (_) => AlertDialog(
                              title: const Text(
                                'Delete Event?',
                              ),
                              content: Text(
                                'Delete ${event.title}?',
                              ),
                              actions: [
                                TextButton(
                                  onPressed: () {
                                    Navigator.pop(
                                      context,
                                    );
                                  },
                                  child: const Text(
                                    'Cancel',
                                  ),
                                ),
                                TextButton(
                                  onPressed: () {
                                    events.remove(event);
                                    Navigator.pop(
                                      context,
                                    );
                                    refresh();
                                  },
                                  child: const Text(
                                    'Delete',
                                    style: TextStyle(
                                      color: red,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                        icon: const Icon(
                          Icons.delete,
                          color: red,
                        ),
                        label: const Text('Delete'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

// ============================================================
// EVENT EDITOR
// ============================================================

class EventEditorScreen extends StatefulWidget {
  final EventModel? event;
  final VoidCallback onSaved;

  const EventEditorScreen({
    super.key,
    this.event,
    required this.onSaved,
  });

  @override
  State<EventEditorScreen> createState() =>
      _EventEditorScreenState();
}

class _EventEditorScreenState
    extends State<EventEditorScreen> {
  final formKey = GlobalKey<FormState>();

  late TextEditingController title;
  late TextEditingController description;
  late TextEditingController date;
  late TextEditingController time;
  late TextEditingController venue;
  late TextEditingController organizer;
  late TextEditingController category;

  @override
  void initState() {
    super.initState();

    final e = widget.event;

    title = TextEditingController(
      text: e?.title ?? '',
    );
    description = TextEditingController(
      text: e?.description ?? '',
    );
    date = TextEditingController(
      text: e?.date ?? '',
    );
    time = TextEditingController(
      text: e?.time ?? '',
    );
    venue = TextEditingController(
      text: e?.venue ?? '',
    );
    organizer = TextEditingController(
      text: e?.organizer ?? '',
    );
    category = TextEditingController(
      text: e?.category ?? '',
    );
  }

  @override
  void dispose() {
    title.dispose();
    description.dispose();
    date.dispose();
    time.dispose();
    venue.dispose();
    organizer.dispose();
    category.dispose();
    super.dispose();
  }

  void save() {
    if (!formKey.currentState!.validate()) return;

    if (widget.event == null) {
      events.add(
        EventModel(
          id: DateTime.now()
              .millisecondsSinceEpoch
              .toString(),
          title: title.text,
          description: description.text,
          date: date.text,
          time: time.text,
          venue: venue.text,
          organizer: organizer.text,
          category: category.text,
          status: 'Pending',
          programs: [],
        ),
      );

      notifications.insert(
        0,
        'New event "${title.text}" submitted for approval.',
      );
    } else {
      final e = widget.event!;

      e.title = title.text;
      e.description = description.text;
      e.date = date.text;
      e.time = time.text;
      e.venue = venue.text;
      e.organizer = organizer.text;
      e.category = category.text;
    }

    widget.onSaved();

    Navigator.pop(context);
  }

  Widget field(
      TextEditingController controller,
      String label,
      IconData icon,
      ) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: TextFormField(
        controller: controller,
        maxLines: label == 'Description' ? 3 : 1,
        decoration: InputDecoration(
          labelText: label,
          prefixIcon: Icon(icon),
        ),
        validator: (value) {
          if (value == null ||
              value.trim().isEmpty) {
            return 'Enter $label';
          }
          return null;
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final editing = widget.event != null;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          editing
              ? 'Edit Event'
              : 'Add Event / Fest',
        ),
      ),
      body: Form(
        key: formKey,
        child: ListView(
          padding: const EdgeInsets.all(18),
          children: [
            field(
              title,
              'Event / Fest Name',
              Icons.event,
            ),
            field(
              description,
              'Description',
              Icons.description,
            ),
            field(
              date,
              'Date',
              Icons.calendar_month,
            ),
            field(
              time,
              'Time',
              Icons.access_time,
            ),
            field(
              venue,
              'Venue',
              Icons.location_on,
            ),
            field(
              organizer,
              'Organizer',
              Icons.person,
            ),
            field(
              category,
              'Category',
              Icons.category,
            ),

            const SizedBox(height: 10),

            ElevatedButton.icon(
              onPressed: save,
              icon: const Icon(Icons.save),
              label: Text(
                editing
                    ? 'Update Event'
                    : 'Create Event',
              ),
            ),

            if (editing) ...[
              const SizedBox(height: 12),
              OutlinedButton.icon(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) =>
                          ProgramManagerScreen(
                            event: widget.event!,
                            onChanged: widget.onSaved,
                          ),
                    ),
                  );
                },
                icon: const Icon(Icons.add),
                label: const Text(
                  'Add / Edit Programs',
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }
}

// ============================================================
// PROGRAM MANAGER
// ============================================================

class ProgramManagerScreen
    extends StatefulWidget {
  final EventModel event;
  final VoidCallback onChanged;

  const ProgramManagerScreen({
    super.key,
    required this.event,
    required this.onChanged,
  });

  @override
  State<ProgramManagerScreen> createState() =>
      _ProgramManagerScreenState();
}

class _ProgramManagerScreenState
    extends State<ProgramManagerScreen> {
  void openEditor([Program? program]) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => ProgramEditorScreen(
          event: widget.event,
          program: program,
          onSaved: () {
            setState(() {});
            widget.onChanged();
          },
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final programs = widget.event.programs;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Manage Programs'),
      ),

      floatingActionButton:
      FloatingActionButton.extended(
        backgroundColor: green,
        foregroundColor: black,
        onPressed: () => openEditor(),
        icon: const Icon(Icons.add),
        label: const Text('Add Program'),
      ),

      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          sectionTitle(
            'Programs',
            subtitle:
            'Dance, Singing, Coding, Quiz, Drama and more.',
          ),

          if (programs.isEmpty)
            const Card(
              child: Padding(
                padding: EdgeInsets.all(25),
                child: Center(
                  child: Text(
                    'No programs added yet.',
                  ),
                ),
              ),
            ),

          ...programs.map(
                (program) => Card(
              child: ListTile(
                leading: const CircleAvatar(
                  backgroundColor: lightGreen,
                  child: Icon(
                    Icons.emoji_events,
                    color: darkGreen,
                  ),
                ),
                title: Text(
                  program.name,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Text(
                  '${program.date}\n'
                      '${program.time} • '
                      '${program.venue}\n'
                      'Fee: ${program.fee == 0 ? "FREE" : "₹${program.fee.toStringAsFixed(0)}"}',
                ),
                isThreeLine: true,
                trailing:
                PopupMenuButton<String>(
                  onSelected: (value) {
                    if (value == 'edit') {
                      openEditor(program);
                    } else {
                      widget.event.programs
                          .remove(program);
                      setState(() {});
                      widget.onChanged();
                    }
                  },
                  itemBuilder: (_) => const [
                    PopupMenuItem(
                      value: 'edit',
                      child: Text(
                        'Edit Program',
                      ),
                    ),
                    PopupMenuItem(
                      value: 'delete',
                      child: Text(
                        'Delete Program',
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// ============================================================
// PROGRAM EDITOR
// ============================================================

class ProgramEditorScreen
    extends StatefulWidget {
  final EventModel event;
  final Program? program;
  final VoidCallback onSaved;

  const ProgramEditorScreen({
    super.key,
    required this.event,
    this.program,
    required this.onSaved,
  });

  @override
  State<ProgramEditorScreen> createState() =>
      _ProgramEditorScreenState();
}

class _ProgramEditorScreenState
    extends State<ProgramEditorScreen> {
  final formKey = GlobalKey<FormState>();

  late TextEditingController name;
  late TextEditingController description;
  late TextEditingController date;
  late TextEditingController time;
  late TextEditingController venue;
  late TextEditingController fee;
  late TextEditingController capacity;

  @override
  void initState() {
    super.initState();

    final p = widget.program;

    name = TextEditingController(
      text: p?.name ?? '',
    );

    description = TextEditingController(
      text: p?.description ?? '',
    );

    date = TextEditingController(
      text: p?.date ?? '',
    );

    time = TextEditingController(
      text: p?.time ?? '',
    );

    venue = TextEditingController(
      text: p?.venue ?? '',
    );

    fee = TextEditingController(
      text: p == null ? '0' : p.fee.toString(),
    );

    capacity = TextEditingController(
      text: p == null ? '50' : p.capacity.toString(),
    );
  }

  @override
  void dispose() {
    name.dispose();
    description.dispose();
    date.dispose();
    time.dispose();
    venue.dispose();
    fee.dispose();
    capacity.dispose();
    super.dispose();
  }

  void save() {
    if (!formKey.currentState!.validate()) {
      return;
    }

    final feeValue =
        double.tryParse(fee.text) ?? 0;

    final capacityValue =
        int.tryParse(capacity.text) ?? 50;

    if (widget.program == null) {
      widget.event.programs.add(
        Program(
          id: DateTime.now()
              .millisecondsSinceEpoch
              .toString(),
          name: name.text,
          description: description.text,
          date: date.text,
          time: time.text,
          venue: venue.text,
          fee: feeValue,
          capacity: capacityValue,
        ),
      );
    } else {
      final p = widget.program!;

      p.name = name.text;
      p.description = description.text;
      p.date = date.text;
      p.time = time.text;
      p.venue = venue.text;
      p.fee = feeValue;
      p.capacity = capacityValue;
    }

    widget.onSaved();
    Navigator.pop(context);
  }

  Widget field(
      TextEditingController controller,
      String label,
      IconData icon, {
        TextInputType? keyboardType,
      }) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: TextFormField(
        controller: controller,
        keyboardType: keyboardType,
        maxLines:
        label.contains('Description') ? 3 : 1,
        decoration: InputDecoration(
          labelText: label,
          prefixIcon: Icon(icon),
        ),
        validator: (value) {
          if (value == null ||
              value.trim().isEmpty) {
            return 'Enter $label';
          }

          return null;
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final editing = widget.program != null;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          editing
              ? 'Edit Program'
              : 'Add Program',
        ),
      ),
      body: Form(
        key: formKey,
        child: ListView(
          padding: const EdgeInsets.all(18),
          children: [
            field(
              name,
              'Program Name',
              Icons.emoji_events,
            ),
            field(
              description,
              'Program Description',
              Icons.description,
            ),
            field(
              date,
              'Program Date',
              Icons.calendar_month,
            ),
            field(
              time,
              'Program Time',
              Icons.access_time,
            ),
            field(
              venue,
              'Program Venue',
              Icons.location_on,
            ),
            field(
              fee,
              'Registration Fee',
              Icons.currency_rupee,
              keyboardType:
              TextInputType.number,
            ),
            field(
              capacity,
              'Student Capacity',
              Icons.people,
              keyboardType:
              TextInputType.number,
            ),

            const SizedBox(height: 10),

            ElevatedButton.icon(
              onPressed: save,
              icon: const Icon(Icons.save),
              label: Text(
                editing
                    ? 'Update Program'
                    : 'Save Program',
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// ============================================================
// REGISTERED STUDENTS
// ============================================================

class RegisteredStudentsScreen
    extends StatelessWidget {
  final EventModel event;

  const RegisteredStudentsScreen({
    super.key,
    required this.event,
  });

  @override
  Widget build(BuildContext context) {
    final list = registrations
        .where(
          (r) => r.eventTitle == event.title,
    )
        .toList();

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Registered Students',
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Text(
            event.title,
            style: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 15),

          statCard(
            'Total Registered',
            event.registeredStudents
                .toString(),
            Icons.people,
            darkGreen,
          ),

          const SizedBox(height: 15),

          if (list.isEmpty)
            const Card(
              child: Padding(
                padding: EdgeInsets.all(20),
                child: Text(
                  'No student registrations yet.',
                ),
              ),
            ),

          ...list.map(
                (r) => Card(
              child: ListTile(
                leading: const CircleAvatar(
                  backgroundColor: lightGreen,
                  child: Icon(
                    Icons.person,
                    color: darkGreen,
                  ),
                ),
                title: Text(r.studentName),
                subtitle: Text(
                  '${r.studentEmail}\n'
                      '${r.programName}\n'
                      '${r.date} • ${r.time}',
                ),
                isThreeLine: true,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// ============================================================
// ORGANIZER STATISTICS
// ============================================================

class OrganizerStats
    extends StatelessWidget {
  const OrganizerStats({super.key});

  @override
  Widget build(BuildContext context) {
    final totalPrograms = events.fold<int>(
      0,
          (sum, e) => sum + e.programs.length,
    );

    final registered = events.fold<int>(
      0,
          (sum, e) => sum + e.registeredStudents,
    );

    final pending = events
        .where((e) => e.status == 'Pending')
        .length;

    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        sectionTitle(
          'Event Statistics',
          subtitle:
          'Overall event performance',
        ),

        statCard(
          'Total Events',
          events.length.toString(),
          Icons.event,
          green,
        ),

        statCard(
          'Total Programs',
          totalPrograms.toString(),
          Icons.list_alt,
          Colors.purple,
        ),

        statCard(
          'Registered Students',
          registered.toString(),
          Icons.people,
          darkGreen,
        ),

        statCard(
          'Pending Events',
          pending.toString(),
          Icons.pending_actions,
          orange,
        ),
      ],
    );
  }
}

// ============================================================
// ADMIN DASHBOARD
// ============================================================

class AdminDashboard extends StatefulWidget {
  const AdminDashboard({super.key});

  @override
  State<AdminDashboard> createState() =>
      _AdminDashboardState();
}

class _AdminDashboardState
    extends State<AdminDashboard> {
  int index = 0;

  void refresh() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final pages = [
      AdminHome(refresh: refresh),
      AdminPendingEvents(refresh: refresh),
      const ManageUsersScreen(),
      const ProfileScreen(role: 'Admin'),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Admin Dashboard',
        ),
      ),
      body: pages[index],
      bottomNavigationBar: NavigationBar(
        backgroundColor: black,
        indicatorColor: green,
        selectedIndex: index,
        onDestinationSelected: (value) {
          setState(() {
            index = value;
          });
        },
        destinations: const [
          NavigationDestination(
            icon: Icon(
              Icons.dashboard_outlined,
              color: Colors.white,
            ),
            selectedIcon:
            Icon(Icons.dashboard),
            label: 'Dashboard',
          ),
          NavigationDestination(
            icon: Icon(
              Icons.pending_actions,
              color: Colors.white,
            ),
            selectedIcon:
            Icon(Icons.pending_actions),
            label: 'Pending',
          ),
          NavigationDestination(
            icon: Icon(
              Icons.people_outline,
              color: Colors.white,
            ),
            selectedIcon:
            Icon(Icons.people),
            label: 'Users',
          ),
          NavigationDestination(
            icon: Icon(
              Icons.person_outline,
              color: Colors.white,
            ),
            selectedIcon:
            Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}

// ============================================================
// ADMIN HOME
// ============================================================

class AdminHome extends StatelessWidget {
  final VoidCallback refresh;

  const AdminHome({
    super.key,
    required this.refresh,
  });

  @override
  Widget build(BuildContext context) {
    final pending = events
        .where((e) => e.status == 'Pending')
        .length;

    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        const Text(
          'Welcome Admin 👋',
          style: TextStyle(
            fontSize: 26,
            fontWeight: FontWeight.bold,
          ),
        ),

        const SizedBox(height: 22),

        statCard(
          'Total Students',
          '250',
          Icons.school,
          green,
        ),

        statCard(
          'Total Organizers',
          '18',
          Icons.person,
          Colors.purple,
        ),

        statCard(
          'Total Events',
          events.length.toString(),
          Icons.event,
          darkGreen,
        ),

        statCard(
          'Pending Events',
          pending.toString(),
          Icons.pending_actions,
          orange,
        ),

        const SizedBox(height: 10),

        ElevatedButton.icon(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) =>
                    AdminPendingEvents(
                      refresh: refresh,
                    ),
              ),
            );
          },
          icon: const Icon(Icons.approval),
          label: const Text(
            'Review Pending Events',
          ),
        ),
      ],
    );
  }
}

// ============================================================
// ADMIN PENDING EVENTS
// ============================================================

class AdminPendingEvents
    extends StatelessWidget {
  final VoidCallback refresh;

  const AdminPendingEvents({
    super.key,
    required this.refresh,
  });

  void approve(EventModel event) {
    event.status = 'Approved';

    notifications.insert(
      0,
      '${event.title} has been approved.',
    );

    refresh();
  }

  void reject(EventModel event) {
    event.status = 'Rejected';

    notifications.insert(
      0,
      '${event.title} has been rejected.',
    );

    refresh();
  }

  @override
  Widget build(BuildContext context) {
    final pending = events
        .where((e) => e.status == 'Pending')
        .toList();

    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        sectionTitle(
          'Pending Events',
          subtitle:
          'Approve or reject event submissions.',
        ),

        if (pending.isEmpty)
          const Card(
            child: Padding(
              padding: EdgeInsets.all(25),
              child: Center(
                child: Text(
                  'No pending events.',
                ),
              ),
            ),
          ),

        ...pending.map(
              (event) => Card(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment:
                CrossAxisAlignment.start,
                children: [
                  Text(
                    event.title,
                    style: const TextStyle(
                      fontSize: 21,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 10),

                  Text(event.description),

                  const SizedBox(height: 15),

                  infoRow(
                    Icons.calendar_month,
                    'Date',
                    event.date,
                  ),

                  infoRow(
                    Icons.access_time,
                    'Time',
                    event.time,
                  ),

                  infoRow(
                    Icons.location_on,
                    'Venue',
                    event.venue,
                  ),

                  infoRow(
                    Icons.person,
                    'Organizer',
                    event.organizer,
                  ),

                  const Divider(),

                  Row(
                    children: [
                      Expanded(
                        child: ElevatedButton.icon(
                          onPressed: () {
                            approve(event);
                          },
                          icon: const Icon(
                            Icons.check,
                          ),
                          label: const Text(
                            'Approve',
                          ),
                          style:
                          ElevatedButton.styleFrom(
                            backgroundColor: green,
                          ),
                        ),
                      ),

                      const SizedBox(width: 10),

                      Expanded(
                        child: ElevatedButton.icon(
                          onPressed: () {
                            reject(event);
                          },
                          icon: const Icon(
                            Icons.close,
                          ),
                          label: const Text(
                            'Reject',
                          ),
                          style:
                          ElevatedButton.styleFrom(
                            backgroundColor: red,
                            foregroundColor:
                            Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

// ============================================================
// MANAGE USERS
// ============================================================

class ManageUsersScreen
    extends StatelessWidget {
  const ManageUsersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final users = [
      [
        'Student User',
        'Student',
        'student@college.edu',
      ],
      [
        'Organizer One',
        'Organizer',
        'organizer@college.edu',
      ],
      [
        'Admin User',
        'Admin',
        'admin@college.edu',
      ],
      [
        'Student Two',
        'Student',
        'student2@college.edu',
      ],
    ];

    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        sectionTitle(
          'Manage Users',
          subtitle:
          'View and manage college users.',
        ),

        ...users.map(
              (user) => Card(
            child: ListTile(
              leading: const CircleAvatar(
                backgroundColor: black,
                child: Icon(
                  Icons.person,
                  color: green,
                ),
              ),
              title: Text(user[0]),
              subtitle: Text(
                '${user[1]}\n${user[2]}',
              ),
              isThreeLine: true,
              trailing:
              PopupMenuButton<String>(
                onSelected: (value) {
                  ScaffoldMessenger.of(
                    context,
                  ).showSnackBar(
                    SnackBar(
                      content: Text(
                        '$value selected for ${user[0]}',
                      ),
                    ),
                  );
                },
                itemBuilder: (_) => const [
                  PopupMenuItem(
                    value: 'View',
                    child: Text('View User'),
                  ),
                  PopupMenuItem(
                    value: 'Block',
                    child: Text('Block User'),
                  ),
                  PopupMenuItem(
                    value: 'Delete',
                    child: Text('Delete User'),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

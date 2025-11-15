import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AstroPathshala',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        primaryColor: Colors.blueAccent,
        scaffoldBackgroundColor: const Color(0xFF000020), // Dark blue space color
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.blueAccent,
          brightness: Brightness.dark,
        ),
        textTheme: const TextTheme(
          bodyLarge: TextStyle(color: Colors.white),
          bodyMedium: TextStyle(color: Colors.white70),
          headlineLarge: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          headlineMedium: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          titleLarge: TextStyle(color: Colors.white, fontStyle: FontStyle.italic),
        ),
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AstroPathshala'),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        actions: [
          TextButton(onPressed: () {}, child: const Text('Home', style: TextStyle(color: Colors.white))),
          TextButton(onPressed: () {}, child: const Text('About Us', style: TextStyle(color: Colors.white))),
          TextButton(onPressed: () {}, child: const Text('Services', style: TextStyle(color: Colors.white))),
          TextButton(onPressed: () {}, child: const Text('Contact', style: TextStyle(color: Colors.white))),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            _buildHeader(context),
            const SizedBox(height: 40),
            _buildSectionTitle('Our Programs'),
            const SizedBox(height: 20),
            _buildPrograms(),
            const SizedBox(height: 40),
            _buildSectionTitle('Upcoming Events'),
            const SizedBox(height: 20),
            _buildEvents(),
            const SizedBox(height: 40),
            _buildSectionTitle('Testimonials'),
            const SizedBox(height: 20),
            _buildTestimonials(),
            const SizedBox(height: 50),
            _buildFooter(),
          ],
        ),
      ),
    );
  }

  Widget _buildHeader(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 60),
      width: double.infinity,
      // Placeholder for a background image
      decoration: const BoxDecoration(
        color: Colors.black54,
        // image: DecorationImage(
        //   image: NetworkImage('URL_TO_SPACE_IMAGE'),
        //   fit: BoxFit.cover,
        // ),
      ),
      child: Column(
        children: [
          Text(
            'AstroPathshala',
            style: Theme.of(context).textTheme.headlineLarge?.copyWith(fontSize: 48),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 20),
          Text(
            'Your ultimate gateway to space education. We connect young minds to the wonders of the cosmos.',
            style: Theme.of(context).textTheme.titleLarge,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 30),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blueAccent,
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
            ),
            child: const Text('Explore Our Programs', style: TextStyle(fontSize: 16)),
          ),
        ],
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Text(
      title,
      style: const TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: Colors.white),
    );
  }

  Widget _buildPrograms() {
    return const Wrap(
      spacing: 20,
      runSpacing: 20,
      alignment: WrapAlignment.center,
      children: [
        ProgramCard(
          icon: Icons.school,
          title: 'Astro-Pathshala',
          description: 'Curriculum-based space education for schools.',
        ),
        ProgramCard(
          icon: Icons.science,
          title: 'Astro-Lab',
          description: 'Hands-on STEM labs for practical learning.',
        ),
        ProgramCard(
          icon: Icons.nature_people,
          title: 'Astro-Picnic',
          description: 'Outdoor learning and stargazing events.',
        ),
      ],
    );
  }

  Widget _buildEvents() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          const EventCard(
            image: 'https://via.placeholder.com/300x200.png/000020/FFFFFF?text=Space+Quiz',
            title: 'National Space Quiz',
            date: 'October 25, 2024',
          ),
          const SizedBox(width: 20),
          const EventCard(
            image: 'https://via.placeholder.com/300x200.png/000020/FFFFFF?text=Exhibition',
            title: 'ISRO Exhibition',
            date: 'November 10, 2024',
          ),
          const SizedBox(width: 20),
          const EventCard(
            image: 'https://via.placeholder.com/300x200.png/000020/FFFFFF?text=Stargazing',
            title: 'Stargazing Night',
            date: 'December 5, 2024',
          ),
        ],
      ),
    );
  }

  Widget _buildTestimonials() {
    return const SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          TestimonialCard(
            quote: 'AstroPathshala has ignited a passion for space in my child. Highly recommended!',
            author: 'Aarav Sharma, Parent',
          ),
          SizedBox(width: 20),
          TestimonialCard(
            quote: 'The hands-on activities are fantastic. Our students love the Astro-Lab sessions.',
            author: 'Priya Singh, School Principal',
          ),
          SizedBox(width: 20),
          TestimonialCard(
            quote: 'I learned so much about rockets and stars. It was the best picnic ever!',
            author: 'Rohan Verma, Student',
          ),
        ],
      ),
    );
  }

  Widget _buildFooter() {
    return Container(
      padding: const EdgeInsets.all(20),
      color: Colors.black.withOpacity(0.5),
      child: const Column(
        children: [
          Text(
            'AstroPathshala',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          Text(
            'Connecting young minds to the wonders of the cosmos.',
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(onPressed: null, icon: Icon(Icons.facebook, color: Colors.white)),
              IconButton(onPressed: null, icon: Icon(Icons.camera_alt, color: Colors.white)), // Placeholder for Instagram
              IconButton(onPressed: null, icon: Icon(Icons.play_arrow, color: Colors.white)), // Placeholder for YouTube
            ],
          ),
          SizedBox(height: 10),
          Text('© 2024 AstroPathshala. All Rights Reserved.'),
        ],
      ),
    );
  }
}

class ProgramCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String description;

  const ProgramCard({
    super.key,
    required this.icon,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.1),
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.blueAccent.withOpacity(0.5)),
      ),
      child: Column(
        children: [
          Icon(icon, size: 40, color: Colors.blueAccent),
          const SizedBox(height: 15),
          Text(title, style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          const SizedBox(height: 10),
          Text(description, textAlign: TextAlign.center),
        ],
      ),
    );
  }
}

class EventCard extends StatelessWidget {
  final String image;
  final String title;
  final String date;

  const EventCard({
    super.key,
    required this.image,
    required this.title,
    required this.date,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      child: Card(
        color: Colors.white.withOpacity(0.1),
        child: Column(
          children: [
            Image.network(image, height: 150, width: 300, fit: BoxFit.cover),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  const SizedBox(height: 8),
                  Text(date, style: const TextStyle(color: Colors.white70)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TestimonialCard extends StatelessWidget {
  final String quote;
  final String author;

  const TestimonialCard({
    super.key,
    required this.quote,
    required this.author,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.1),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          const Icon(Icons.format_quote, color: Colors.blueAccent),
          const SizedBox(height: 10),
          Text(
            quote,
            textAlign: TextAlign.center,
            style: const TextStyle(fontStyle: FontStyle.italic),
          ),
          const SizedBox(height: 15),
          Text(
            '- $author',
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}

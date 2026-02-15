import 'package:flutter/material.dart';

class SocialMediaForm extends StatefulWidget {
  @override
  _SocialMediaFormState createState() => _SocialMediaFormState();
}

class _SocialMediaFormState extends State<SocialMediaForm> {
  bool _showForm = false;

  void _toggleForm() {
    setState(() {
      _showForm = !_showForm;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Social Media Form'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            ElevatedButton(
              onPressed: _toggleForm,
              child: Text(_showForm ? 'Hide Social Media' : 'Show Social Media'),
            ),
            SizedBox(height: 30),
            if (_showForm) _buildForm(),
          ],
        ),
      ),
    );
  }

  Widget _buildForm() {
    return Column(
      children: <Widget>[
        _buildTextField('LinkedIn ID'),
        _buildTextField('Facebook ID'),
        _buildTextField('Twitter ID'),
        _buildTextField('YouTube ID'),
        _buildTextField('Instagram ID'),
        _buildTextField('TikTok ID'),
        _buildTextField('GitHub ID'),
      ],
    );
  }

  Widget _buildTextField(String label) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15),
      child: TextField(
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          labelText: label,
        ),
      ),
    );
  }
}

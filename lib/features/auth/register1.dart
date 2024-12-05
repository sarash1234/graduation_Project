import 'package:flutter/material.dart';

class RegistreScreenFirst extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();

  RegistreScreenFirst({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Register'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Image.asset(
                  'assets/images/Logo.png',
                  height: 100,
                ),
              ),
              const SizedBox(height: 20),
              _buildTextField('First Name *', 'Enter your first name'),
              _buildTextField('Last Name *', 'Enter your last name'),
              _buildTextField('Email *', 'Enter your email', isEmail: true),
              _buildPasswordField(),
              _buildDatePicker(context),
              _buildDropdown('Gender*', ['Male', 'Female']),
              _buildTextField('Mobile Phone*', 'Enter your phone number'),
              _buildDropdown(
                  'Your Country',  [
    'USA', 'Egypt', 'India', 'Canada', 'Germany', 'France', 'Italy', 
    'UK', 'Australia', 'Brazil', 'Japan', 'China', 'South Korea', 
    'Mexico', 'Russia', 'Spain', 'Turkey', 'South Africa', 'Argentina', 
    'Saudi Arabia', 'Indonesia', 'Nigeria', 'Vietnam', 'Thailand', 
    'Pakistan', 'Malaysia', 'Singapore', 'Philippines', 'United Arab Emirates', 
    'Qatar', 'Kuwait', 'Bahrain', 'Jordan', 'Lebanon', 'Iraq', 'Syria', 
    'Tunisia', 'Algeria', 'Morocco', 'Kenya', 'Ethiopia', 'Chile', 
    'Peru', 'Colombia', 'Uruguay', 'New Zealand', 'Poland', 'Ukraine', 
    'Romania', 'Sweden', 'Norway', 'Finland', 'Denmark', 'Switzerland', 
    'Netherlands', 'Belgium', 'Austria', 'Greece', 'Portugal', 'Czech Republic',
    'Hungary', 'Slovakia', 'Croatia', 'Slovenia', 'Bulgaria', 'Serbia', 
    'Macedonia', 'Montenegro', 'Albania', 'Georgia', 'Armenia', 'Kazakhstan'
  ]),
              _buildTextField('Address', 'Enter your address'),
              const SizedBox(height: 20),
              Center(
                child: SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                              content: Text('Form submitted successfully')),
                        );
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      backgroundColor: Colors.teal,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    child: const Text(
                      'Register',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTextField(String label, String hint, {bool isEmail = false}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: TextFormField(
        keyboardType: isEmail ? TextInputType.emailAddress : TextInputType.text,
        decoration: InputDecoration(
          labelText: label,
          hintText: hint,
          border: const OutlineInputBorder(),
        ),
        validator: (value) {
          if (value == null || value.isEmpty) {
            return '$label is required';
          }
          if (isEmail && !RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(value)) {
            return 'Enter a valid email';
          }
          return null;
        },
      ),
    );
  }

  Widget _buildPasswordField() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: TextFormField(
        obscureText: true,
        decoration: const InputDecoration(
          labelText: 'Password *',
          hintText: 'Enter your password',
          border: OutlineInputBorder(),
          suffixIcon: Icon(Icons.visibility),
        ),
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Password is required';
          }
          if (value.length < 6) {
            return 'Password must be at least 6 characters';
          }
          return null;
        },
      ),
    );
  }

  Widget _buildDatePicker(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: TextFormField(
        readOnly: true,
        decoration: const InputDecoration(
          labelText: 'Date Of Birth',
          hintText: 'Select date',
          border: OutlineInputBorder(),
          suffixIcon: Icon(Icons.calendar_today),
        ),
        onTap: () async {
          DateTime? pickedDate = await showDatePicker(
            context: context,
            initialDate: DateTime.now(),
            firstDate: DateTime(1900),
            lastDate: DateTime.now(),
          );
        },
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Date of Birth is required';
          }
          return null;
        },
      ),
    );
  }

  Widget _buildDropdown(String label, List<String> items) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: DropdownButtonFormField<String>(
        decoration: InputDecoration(
          labelText: label,
          border: const OutlineInputBorder(),
        ),
        items: items
            .map((item) => DropdownMenuItem<String>(
                  value: item,
                  child: Text(item),
                ))
            .toList(),
        onChanged: (value) {},
        validator: (value) {
          if (value == null || value.isEmpty) {
            return '$label is required';
          }
          return null;
        },
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../constants/colors.dart';

class CustomNoteItem extends StatelessWidget {
  const CustomNoteItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsetsDirectional.only(
        bottom: 16,
        end: 16,
        top: 16,
      ),
      decoration: BoxDecoration(
        color: AppColors.dustyYellow,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          ListTile(
            contentPadding: const EdgeInsetsDirectional.only(
              top: 8,
              bottom: 8,
              start: 16,
            ),
            title: const Text(
              "Flutter Tips",
              style: TextStyle(
                color: Colors.black,
                fontSize: 24,
                fontWeight: FontWeight.w500,
              ),
            ),
            subtitle: Padding(
              padding: const EdgeInsets.only(top: 12.0),
              child: Text(
                "Build your career with Tharwat Samy",
                style: TextStyle(
                  color: Colors.black.withOpacity(0.5),
                  fontSize: 18,
                  fontWeight: FontWeight.w300,
                ),
                textAlign: TextAlign.start,
              ),
            ),
            minVerticalPadding: 10,
            trailing: IconButton(
              onPressed: () {},
              icon: const Icon(
                FontAwesomeIcons.trash,
                color: Colors.black,
              ),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Align(
            alignment: AlignmentDirectional.bottomEnd,
            child: Text(
              "May21 2023",
              style: TextStyle(
                color: Colors.black.withOpacity(0.5),
                fontWeight: FontWeight.w400,
                fontSize: 12,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';


//more button
MoreButton({
  void Function()? onTap,
}) =>
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(22),
        child: Container(
          height: 41,
          width: 115,
          decoration: BoxDecoration(
              color: Color(0xFF053742).withOpacity(0.2),
              borderRadius: BorderRadius.circular(40)),
          child: Row(
            children: [
              SizedBox(
                width: 15,
              ),
              Text(
                'More',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF053742)),
              ),
              Spacer(),
              Padding(
                padding: const EdgeInsets.all(2.0),
                child: CircleAvatar(
                  backgroundColor: Color(0xFF142F35).withOpacity(0.8),
                  child: Icon(
                    Icons.chevron_right,
                    color: Colors.white,
                    size: 28,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );

CreateNewButton({void Function()? onTap}) => Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(22),
        child: Container(
          height: 41,
          width: 115,
          decoration: BoxDecoration(
              color: Colors.white54,
              borderRadius: BorderRadius.circular(40)),
          child: Row(
            children: [
              SizedBox(
                width: 15,
              ),
              Text(
                'More',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF053742)),
              ),
              Spacer(),
              Padding(
                padding: const EdgeInsets.all(2.0),
                child: CircleAvatar(
                  backgroundColor: Color(0xFF142F35).withOpacity(0.8),
                  child: Icon(
                    Icons.chevron_right,
                    color: Colors.white,
                    size: 28,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );

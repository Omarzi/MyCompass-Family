import '../../../../../../core/utils/exports.dart';

class ContainerForum extends StatelessWidget {
  const ContainerForum({super.key, required this.name, required this.date, required this.postTitle, required this.postDescription, required this.postImage});
  final String name,date,postTitle,postDescription,postImage ;
  @override
  Widget build(BuildContext context) {
    return
      Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade300,
              blurRadius: 6,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header: Profile picture, username, and time
            const SizedBox(width: 12),
             Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  name,
                  style: AppTextStyles.bodyXLarge(context,textColor: AppColors.blackColor,fontWeight: AppConstants.bold
                  ),),
                Text(
                  date,
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),
            // Post Description
             Text(
              postTitle, style: AppTextStyles.bodyLarge(context,textColor: AppColors.blackColor,fontWeight: AppConstants.bold),
            ),
            const SizedBox(height: 12),
            // Post Image
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                postImage, // Example post image
                width: double.infinity,
                height: 200,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 12),

            // Post Description
             Text(
              postDescription,
              style: AppTextStyles.bodyLarge(context,textColor: AppColors.blackColor,fontWeight: AppConstants.medium)),
            const SizedBox(height: 12),

            // Action Buttons: Like, Comment, Share
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _buildActionButton(
                  icon: Icons.thumb_up_alt_outlined,
                  label: 'Like',
                  onPressed: () {},
                ),
                _buildActionButton(
                  icon: Icons.comment_outlined,
                  label: 'Comment',
                  onPressed: () {},
                ),
              ],
            ),
          ],
        ),
      );
  }
  // Helper method to create action buttons
  Widget _buildActionButton({
    required IconData icon,
    required String label,
    required VoidCallback onPressed,
  }) {
    return TextButton.icon(
      onPressed: onPressed,
      icon: Icon(icon, color: Colors.grey),
      label: Text(
        label,
        style: const TextStyle(color: Colors.grey),
      ),
    );
  }
}

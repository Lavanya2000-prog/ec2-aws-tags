# Documentation: How to Manually Create an EC2 Instance and Assign Tags

## Objective

This document provides step-by-step instructions to manually create an EC2 instance named `demo` in AWS and assign tags to it. Tags are key-value pairs that help you identify and manage your AWS resources.

## Prerequisites

- AWS account with necessary permissions to create and manage EC2 instances.
- Basic understanding of the AWS Management Console.

## Steps to Create an EC2 Instance and Assign Tags

### 1. Log in to AWS Management Console

1. Open a web browser and go to [AWS Management Console](https://aws.amazon.com/console/).
2. Enter your AWS account credentials to log in.

### 2. Launch an EC2 Instance

1. **Navigate to EC2 Dashboard:**
   - From the AWS Management Console, click on "Services" in the top left corner.
   - Under "Compute," select "EC2" to open the EC2 Dashboard.

2. **Launch Instance:**
   - In the EC2 Dashboard, click the "Launch Instance" button.

3. **Choose an Amazon Machine Image (AMI):**
   - Select an AMI based on your requirements. For this example, you can select the ubuntu.

4. **Choose an Instance Type:**
   - Select an instance type that meets your needs. The `t2.micro` instance type is often suitable for general purposes and is included in the AWS Free Tier.

5. **Configure Instance Details:**
   - Click "Next: Configure Instance Details."
   - Accept the default settings or configure as needed.

### 3. Add Tags

1. **Add Tags:**
   - Click "Next: Add Tags."
   - Click the "Add Tag" button to add key-value pairs. You need to add the following tags:

     | Key          | Value             |
     |--------------|-------------------|
     | Name         | demo              |
     | Environment  | Development       |
     | Project      | ageas             |
     | Owner        | lavanya           |
     | Department   | banking           |
     | CostCenter   | tcs               |
     | Application  | loan              |
     | Release      | 1.0               |
     | Version      | v.2.0.0           |
     | Team         | devops-team       |

   - Example:
     - Key: `Name`
     - Value: `demo`

2. **Configure Security Group:**
   - Click "Next: Configure Security Group."
   - Create a new security group or select an existing one.
   - Add the necessary inbound rules to allow SSH (port 22) access.

### 4. Launch Instance

1. **Review and Launch:**
   - Click "Review and Launch."
   - Review your instance settings.

2. **Select Key Pair:**
   - Click "Launch."
   - In the pop-up window, select an existing key pair or create a new key pair. This key pair will be used to SSH into your instance.
   - Acknowledge that you have access to the selected key pair.

3. **Launch Instance:**
   - Click the "Launch Instances" button.

4. **View Instance:**
   - Click "View Instances" to go to the EC2 Dashboard and see your newly launched instance.

### 5. Verify Tags

1. **View Tags:**
   - In the EC2 Dashboard, select your instance.
   - In the instance details pane at the bottom, click on the "Tags" tab to view the tags you assigned.

## Conclusion

You have successfully created an EC2 instance named `demo` and manually assigned tags to it. These tags can help you organize and manage your AWS resources effectively. For further automation, you can use Terraform and Jenkins as outlined in the task details.

---

Follow these instructions and you should be able to set up your EC2 instance, fetch its tags with Terraform, and automate the process using Jenkins. If you have any questions or need further assistance, feel free to ask!

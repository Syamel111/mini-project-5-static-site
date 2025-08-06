````md
# 🌐 Static Website with CloudFront CDN, Monitoring & Alerts

This project deploys a **secure, production-ready static website** using **AWS S3 + CloudFront**, with full **monitoring, alerting**, and **Terraform IaC**.

---

## 🚀 What This Project Does

| Feature                          | Description                                                                 |
|----------------------------------|-----------------------------------------------------------------------------|
| 🪣 **S3 Bucket**                 | Secure bucket with static site hosting disabled (CloudFront only access)   |
| 🌩️ **CloudFront CDN**           | Publicly serves site content with caching, SSL, and custom error pages     |
| 🔐 **Origin Access Control**     | Replaces legacy OAI — enforces least-privilege access to S3                |
| 📊 **CloudWatch Log Metrics**    | Parses access logs to monitor 404 errors                                   |
| 🔔 **CloudWatch Alarms + SNS**   | Sends email alerts if 404 spike exceeds threshold                          |
| 🛠️ **Terraform**                | Fully modularized Infrastructure as Code                                   |


---

## 🧠 Key Concepts Covered

* Secure **static site hosting** via S3 + CloudFront (no public S3 access)
* Use of **Origin Access Control (OAC)** for better security vs OAI
* Enabling **access logs** on CloudFront for observability
* Setting up **metric filters** on 404 errors in CloudWatch Logs
* Creating **CloudWatch alarms** to monitor website issues
* Sending **SNS email notifications** for real-time alerts

---

## 📁 Project Structure

```bash
.
├── main.tf                  # Root Terraform config
├── s3.tf                    # S3 bucket + policy
├── cloudfront.tf            # CloudFront distribution + OAC
├── cloudwatch.tf            # Metric filter + alarm + SNS
├── variables.tf             # Variables definition
├── outputs.tf               # Output values
└── index.html               # Sample static file
```

---

## 🚦 How to Deploy

> Prerequisites: AWS CLI configured, Terraform installed

```bash
git clone https://github.com/Syamel111/static-site-cloudfront-monitoring.git
cd static-site-cloudfront-monitoring

terraform init
terraform apply -auto-approve
```

---

## 🧪 Testing the Monitoring

1. Access a non-existent page to simulate a 404:

   ```bash
   curl https://d2vxjgnz6fogup.cloudfront.net/nonexistent-page.html
   ```

2. This triggers the 404 metric in CloudWatch.

3. Alarm breaches threshold → SNS sends email notification.

---

## ✅ Cleanup

```bash
terraform destroy -auto-approve
```

---

## 📚 What I Learned

* How to securely host a static site with **CloudFront and S3**
* How to set up **CloudWatch metric filters** from logs
* How to **monitor error patterns** (like 404) and **send alerts**
* Debugging with `terraform taint` to fix broken dashboards

---

## 🔗 Related Projects

* [Serverless Resume API (Lambda + API Gateway)](https://github.com/Syamel111/DemoCICD)
* [EC2 Auto Scaling with ALB](https://github.com/Syamel111/aws-alb-autoscaling-infra)

---

## 🧑‍💻 Author

Syamel Amri
Cloud DevOps Learner – [Follow my journey](https://github.com/Syamel111)

---

## 📜 License

MIT License

```

# CISO Central Repository Structure Creator
# Run this from the root of your repository

Write-Host "Creating CISO Central repository structure..."

# Function to create directory if it doesn't exist
function Ensure-Dir($path) {
    if (!(Test-Path $path)) {
        New-Item -ItemType Directory -Path $path | Out-Null
        Write-Host "Created directory: $path"
    }
}

# Function to create file if it doesn't exist
function Ensure-File($path) {
    if (!(Test-Path $path)) {
        New-Item -ItemType File -Path $path | Out-Null
        Write-Host "Created file: $path"
    }
}

# Root files
Ensure-File "README.md"
Ensure-File "CONTRIBUTING.md"
Ensure-File "LICENSE"

# 00-index
Ensure-Dir "00-index"
Ensure-File "00-index/certification-roadmap.md"
Ensure-File "00-index/study-index.md"
Ensure-File "00-index/security-reference-map.md"

# 01-cloud-security-architect
Ensure-Dir "01-cloud-security-architect"
Ensure-Dir "01-cloud-security-architect/architecture-notes"
Ensure-Dir "01-cloud-security-architect/scenario-questions"
Ensure-Dir "01-cloud-security-architect/reference-architectures"

Ensure-File "01-cloud-security-architect/architecture-notes/zero-trust.md"
Ensure-File "01-cloud-security-architect/architecture-notes/identity-architecture.md"
Ensure-File "01-cloud-security-architect/architecture-notes/multi-cloud-security.md"
Ensure-File "01-cloud-security-architect/architecture-notes/secure-network-architecture.md"

Ensure-File "01-cloud-security-architect/scenario-questions/architecture-scenarios.md"
Ensure-File "01-cloud-security-architect/scenario-questions/threat-modeling.md"
Ensure-File "01-cloud-security-architect/scenario-questions/design-tradeoffs.md"

Ensure-File "01-cloud-security-architect/reference-architectures/secure-gcp-architecture.md"
Ensure-File "01-cloud-security-architect/reference-architectures/secure-aws-architecture.md"
Ensure-File "01-cloud-security-architect/reference-architectures/hybrid-cloud-security.md"

# 02-cloud-security-engineer
Ensure-Dir "02-cloud-security-engineer"
Ensure-Dir "02-cloud-security-engineer/hardening-guides"
Ensure-Dir "02-cloud-security-engineer/implementation-notes"
Ensure-Dir "02-cloud-security-engineer/engineering-scenarios"

Ensure-File "02-cloud-security-engineer/hardening-guides/linux-hardening.md"
Ensure-File "02-cloud-security-engineer/hardening-guides/container-hardening.md"
Ensure-File "02-cloud-security-engineer/hardening-guides/kubernetes-hardening.md"
Ensure-File "02-cloud-security-engineer/hardening-guides/iam-hardening.md"

Ensure-File "02-cloud-security-engineer/implementation-notes/secrets-management.md"
Ensure-File "02-cloud-security-engineer/implementation-notes/workload-identity.md"
Ensure-File "02-cloud-security-engineer/implementation-notes/network-policies.md"

Ensure-File "02-cloud-security-engineer/engineering-scenarios/incident-response.md"
Ensure-File "02-cloud-security-engineer/engineering-scenarios/security-pipeline.md"

# 03-cloud-security-analyst
Ensure-Dir "03-cloud-security-analyst"
Ensure-Dir "03-cloud-security-analyst/threat-detection"
Ensure-Dir "03-cloud-security-analyst/investigations"
Ensure-Dir "03-cloud-security-analyst/metrics"

Ensure-File "03-cloud-security-analyst/threat-detection/siem-queries.md"
Ensure-File "03-cloud-security-analyst/threat-detection/detection-engineering.md"
Ensure-File "03-cloud-security-analyst/threat-detection/log-analysis.md"

Ensure-File "03-cloud-security-analyst/investigations/cloud-breach-scenarios.md"
Ensure-File "03-cloud-security-analyst/investigations/threat-hunting-playbooks.md"

Ensure-File "03-cloud-security-analyst/metrics/security-kpis.md"
Ensure-File "03-cloud-security-analyst/metrics/compliance-monitoring.md"

# 04-kubernetes-admin
Ensure-Dir "04-kubernetes-admin"
Ensure-Dir "04-kubernetes-admin/cluster-architecture"
Ensure-Dir "04-kubernetes-admin/security"
Ensure-Dir "04-kubernetes-admin/kubernetes-labs"

Ensure-File "04-kubernetes-admin/cluster-architecture/control-plane.md"
Ensure-File "04-kubernetes-admin/cluster-architecture/networking.md"
Ensure-File "04-kubernetes-admin/cluster-architecture/storage.md"

Ensure-File "04-kubernetes-admin/security/pod-security.md"
Ensure-File "04-kubernetes-admin/security/network-policies.md"
Ensure-File "04-kubernetes-admin/security/admission-controllers.md"
Ensure-File "04-kubernetes-admin/security/runtime-security.md"

Ensure-File "04-kubernetes-admin/kubernetes-labs/secure-cluster-build.md"
Ensure-File "04-kubernetes-admin/kubernetes-labs/incident-response.md"

# 05-security-architecture
Ensure-Dir "05-security-architecture"
Ensure-Dir "05-security-architecture/frameworks"
Ensure-Dir "05-security-architecture/threat-modeling"
Ensure-Dir "05-security-architecture/enterprise-architecture"

Ensure-File "05-security-architecture/frameworks/nist-800-53.md"
Ensure-File "05-security-architecture/frameworks/zero-trust.md"
Ensure-File "05-security-architecture/frameworks/cloud-security-reference-model.md"

Ensure-File "05-security-architecture/threat-modeling/stride.md"
Ensure-File "05-security-architecture/threat-modeling/attack-trees.md"

Ensure-File "05-security-architecture/enterprise-architecture/security-reference-architecture.md"
Ensure-File "05-security-architecture/enterprise-architecture/cloud-governance.md"

# 06-certifications
Ensure-Dir "06-certifications"
Ensure-Dir "06-certifications/gcp"
Ensure-Dir "06-certifications/aws"
Ensure-Dir "06-certifications/kubernetes"

Ensure-File "06-certifications/gcp/professional-cloud-architect.md"
Ensure-File "06-certifications/gcp/professional-cloud-security-engineer.md"
Ensure-File "06-certifications/gcp/professional-devops-engineer.md"

Ensure-File "06-certifications/aws/security-specialty.md"

Ensure-File "06-certifications/kubernetes/cka.md"
Ensure-File "06-certifications/kubernetes/cks.md"

# 07-study-questions
Ensure-Dir "07-study-questions"

Ensure-File "07-study-questions/architecture-questions.md"
Ensure-File "07-study-questions/security-scenarios.md"
Ensure-File "07-study-questions/kubernetes-questions.md"
Ensure-File "07-study-questions/incident-response-scenarios.md"

# 08-labs
Ensure-Dir "08-labs"
Ensure-Dir "08-labs/aws-labs"
Ensure-Dir "08-labs/gcp-labs"
Ensure-Dir "08-labs/kubernetes-labs"

# 09-research
Ensure-Dir "09-research"
Ensure-Dir "09-research/papers"
Ensure-Dir "09-research/tools"
Ensure-Dir "09-research/emerging-tech"

Write-Host ""
Write-Host "CISO Central repository structure created successfully!"
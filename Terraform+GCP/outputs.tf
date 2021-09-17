output "network" {
  value       = google_compute_network.vpc_network.name
  description = "If you see that message, you are still alive)"
}

class StrimziKafkaCli < Formula
  include Language::Python::Virtualenv

  desc "Command Line Interface for Strimzi Kafka Operator"
  homepage "https://strimzi-cli.dev"
  url "https://files.pythonhosted.org/packages/ab/e6/d9357d6df9f77f15f868daa8715a62cfe4f29eeb966992bfcf0116053d3d/strimzi_kafka_cli-1.0.0b6.tar.gz"
  sha256 "fd52623b773b92d5538b311a716efbfe3a599017c2f15b9b32e19b83303cc2d7"
  license "Apache-2.0"

  depends_on "python@3.12"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "Strimzi Kafka CLI", shell_output("#{bin}/kfk")
    assert_match "CLI Version:", shell_output("#{bin}/kfk --version")
  end
end

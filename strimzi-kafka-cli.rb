class StrimziKafkaCli < Formula
  include Language::Python::Virtualenv

  desc "Command Line Interface for Strimzi Kafka Operator"
  homepage "https://strimzi-cli.dev"
  url "https://files.pythonhosted.org/packages/56/d8/cc4c26918273aeab33a313e22cffa32183276ad07f67f5fae1c25d4a9046/strimzi_kafka_cli-1.0.0b10.tar.gz"
  sha256 "dec8e10f5c82060c3a42cff921e94be9f16fd7b27675b32c38db766dd5893730"
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

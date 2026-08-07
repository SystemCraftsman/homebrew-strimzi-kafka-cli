class StrimziKafkaCli < Formula
  include Language::Python::Virtualenv

  desc "Command Line Interface for Strimzi Kafka Operator"
  homepage "https://strimzi-cli.dev"
  url "https://files.pythonhosted.org/packages/a0/be/6ffd729d7af18f8f6ce3aba5611ddac659f73f55c723007126ce5d796a26/strimzi_kafka_cli-1.0.0b8.tar.gz"
  sha256 "7ecf3029db0873cdfa966be170fd76cb5416cf4fd44515aebce4857d35a85583"
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

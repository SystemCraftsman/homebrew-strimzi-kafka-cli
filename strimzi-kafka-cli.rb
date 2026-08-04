class StrimziKafkaCli < Formula
  include Language::Python::Virtualenv

  desc "Command Line Interface for Strimzi Kafka Operator"
  homepage "https://strimzi-cli.dev"
  url "https://files.pythonhosted.org/packages/78/08/18d3c5fea7d2196556597eafcc2b9dbb91812133d1a092fca03ae5bb9e3b/strimzi_kafka_cli-1.0.0b2.tar.gz"
  sha256 "2c0bcfaafd0542a70ca2aa57e8de2fa77a67fb8177315f3875a9ca1a3e9baddf"
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

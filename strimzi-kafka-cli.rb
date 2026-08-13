class StrimziKafkaCli < Formula
  include Language::Python::Virtualenv

  desc "Command Line Interface for Strimzi Kafka Operator"
  homepage "https://strimzi-cli.dev"
  url "https://files.pythonhosted.org/packages/a9/75/1b4b73e550224cd0b7bed1c6f5aeb175c34055bdc9f606e57894138c0d32/strimzi_kafka_cli-1.0.0b12.tar.gz"
  sha256 "38a6f31b7fa462c397b5110c8db779cc4c4100ade6b60871c5eca93d6b500133"
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

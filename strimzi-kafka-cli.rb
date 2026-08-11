class StrimziKafkaCli < Formula
  include Language::Python::Virtualenv

  desc "Command Line Interface for Strimzi Kafka Operator"
  homepage "https://strimzi-cli.dev"
  url "https://files.pythonhosted.org/packages/f3/09/0d348828924b736d8435a475a9c585443ecdddaabaa5aa523e193a080ce4/strimzi_kafka_cli-1.0.0b11.tar.gz"
  sha256 "8fa06b50eeea63b57620c69a8d96d534a4a455460e454c9e6a9f85893cf2e63a"
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

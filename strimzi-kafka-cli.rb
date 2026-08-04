class StrimziKafkaCli < Formula
  include Language::Python::Virtualenv

  desc "Command Line Interface for Strimzi Kafka Operator"
  homepage "https://strimzi-cli.dev"
  url "https://files.pythonhosted.org/packages/cc/63/30792d11113764fa34bcd439cbed47adf5b5e704e9a60c36454afd481bb5/strimzi_kafka_cli-1.0.0b1.tar.gz"
  sha256 "48fc9332be1e4e6234941c9fd81f2aa3b6429fdccde20bba2b6367bb7fc3f8db"
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

class StrimziKafkaCli < Formula
  include Language::Python::Virtualenv

  desc "Command Line Interface for Strimzi Kafka Operator"
  homepage "https://strimzi-cli.dev"
  url "https://files.pythonhosted.org/packages/e6/56/b19eb3a73863427de231646ef7d70d4b5d0208c93b005552dbeaa54d50a6/strimzi_kafka_cli-1.0.0b3.tar.gz"
  sha256 "310c50d61126f18a4b848e1c2da0db73ca5d65757c7915e2bcba0514c939c7f3"
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

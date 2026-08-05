class StrimziKafkaCli < Formula
  include Language::Python::Virtualenv

  desc "Command Line Interface for Strimzi Kafka Operator"
  homepage "https://strimzi-cli.dev"
  url "https://files.pythonhosted.org/packages/b4/d5/f6eb8efac83c101270ea7c59d74c2b88f440572dc95a7649c29f22a327df/strimzi_kafka_cli-1.0.0b4.tar.gz"
  sha256 "f957c6969be455066ab4d0b41713a1b4fbe068a7389bad69918d61b8a32b17e8"
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

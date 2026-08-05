class StrimziKafkaCli < Formula
  include Language::Python::Virtualenv

  desc "Command Line Interface for Strimzi Kafka Operator"
  homepage "https://strimzi-cli.dev"
  url "https://files.pythonhosted.org/packages/d2/8f/084b6424cd15a7854e8adbc8e4fe9540f312d4cb065f655bc6946674e320/strimzi_kafka_cli-1.0.0b5.tar.gz"
  sha256 "661b756fe27474520a8f0e6f10708cc400e14ad8c9ab5170781f668b1380cae3"
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

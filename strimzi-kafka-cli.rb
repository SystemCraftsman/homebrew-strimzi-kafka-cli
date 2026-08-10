class StrimziKafkaCli < Formula
  include Language::Python::Virtualenv

  desc "Command Line Interface for Strimzi Kafka Operator"
  homepage "https://strimzi-cli.dev"
  url "https://files.pythonhosted.org/packages/50/ac/f34f49297398f266aca806d40ebc4b345fa3ef158eebcdfceea6996dc982/strimzi_kafka_cli-1.0.0b9.tar.gz"
  sha256 "3253dfccc9329a8bf66ca421d3b5003f2436f5585f7b2e45f1370c2054ca0ed5"
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

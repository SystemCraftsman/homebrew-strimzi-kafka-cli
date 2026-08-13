class StrimziKafkaCli < Formula
  include Language::Python::Virtualenv

  desc "Command Line Interface for Strimzi Kafka Operator"
  homepage "https://strimzi-cli.dev"
  url "https://files.pythonhosted.org/packages/84/37/4199817701f0a8d366640abe03339d293c737fba8a65fdbc67535c400792/strimzi_kafka_cli-1.0.0b13.tar.gz"
  sha256 "970df9d0952dd10b2e16c524f762b4f51d6e694df0d1e98d0fc831c16b54ae74"
  license "Apache-2.0"

  depends_on "python@3.12"

  def install
    virtualenv_install_with_resources
    system Formula["python@3.12"].opt_bin/"python3.12", "-m", "pip", "--python=#{libexec}/bin/python", "install", "fastmcp"
  end

  test do
    assert_match "Strimzi Kafka CLI", shell_output("#{bin}/kfk")
    assert_match "CLI Version:", shell_output("#{bin}/kfk --version")
  end
end

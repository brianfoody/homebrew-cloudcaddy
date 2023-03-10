class Cloudcaddy < Formula
  include Language::Python::Virtualenv
  desc "Cloud Caddy"
  homepage "https://www.cloudcanvas.xyz"
  url "https://github.com/brianfoody/cloudcaddy/blob/main/cloudcaddy-0.0.6.tar.gz?raw=true"
  sha256 "d5ea970711f02c0e21a17d25ed879197764c9ff28279cae554249249e583c03d"
  license "Apache-2.0"

  livecheck do
    url :stable
  end

  depends_on "python@3.9"

  resource "requests" do
    url "https://files.pythonhosted.org/packages/9d/ee/391076f5937f0a8cdf5e53b701ffc91753e87b07d66bae4a09aa671897bf/requests-2.28.2.tar.gz"
    sha256 "98b1b2782e3c6c4904938b84c0eb932721069dfdb9134313beff7c83c2df24bf"
  end

  def install
    virtualenv_install_with_resources
  end

  # test do
  #   assert_match "15", shell_output("#{bin}/cloudcaddy --get '/:memory:.csv?sql=select+3*5'")
  #   assert_match "<title>Cloudcaddy:", shell_output("#{bin}/cloudcaddy --get '/'")
  # end
end

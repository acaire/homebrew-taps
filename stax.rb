class Stax < Formula
  include Language::Python::Virtualenv

  desc "Manage Everything Cloudformation with stax"
  homepage "https://github.com/acaire/stax"
  url "https://github.com/acaire/stax/archive/0.3.1.tar.gz"
  sha256" a1743168f1610e3bf516d5b18f814cdd437b18fe37086cccd1d9e95d9b365888"

  depends_on "python@3.8"

  resource "boto3" do
    url "https://files.pythonhosted.org/packages/db/64/cb282f4cb1e4afd21d73851f7ee23f8a9c410f370442ab387a8e3be16072/boto3-1.12.23.tar.gz"
    sha256 "0080ea1cce4c87d9f1e4e47fed4b994451b0022fcf6e120d1fb653eb3874506d"
  end

  resource "botocore" do
    url "https://files.pythonhosted.org/packages/ea/6b/128b3c5dbf2d73de6ec44ee0a124bb8f7daf60a311e41a4f21ac249f3c02/botocore-1.15.23.tar.gz"
    sha256 "e4fc86574043b20267f863b9168bd1c9ed50a53f0f7222ce8c99f64355174515"
  end

  resource "click" do
    url "https://files.pythonhosted.org/packages/4e/ab/5d6bc3b697154018ef196f5b17d958fac3854e2efbc39ea07a284d4a6a9b/click-7.1.1.tar.gz"
    sha256 "8a18b4ea89d8820c5d0c7da8a64b2c324b4dabb695804dbfea19b9be9d88c0cc"
  end

  resource "colorama" do
    url "https://files.pythonhosted.org/packages/82/75/f2a4c0c94c85e2693c229142eb448840fba0f9230111faa889d1f541d12d/colorama-0.4.3.tar.gz"
    sha256 "e96da0d330793e2cb9485e9ddfd918d456036c7149416295932478192f4436a1"
  end

  resource "cursor" do
    url "https://files.pythonhosted.org/packages/b7/6a/c99e426288c8b0d229107a09137cf0518a84c9891af796802a5f888da0d0/cursor-1.3.4.tar.gz"
    sha256 "33f279a17789c04efd27a92501a0dad62bb011f8a4cdff93867c798d26508940"
  end

  resource "docutils" do
    url "https://files.pythonhosted.org/packages/93/22/953e071b589b0b1fee420ab06a0d15e5aa0c7470eb9966d60393ce58ad61/docutils-0.15.2.tar.gz"
    sha256 "a2aeea129088da402665e92e0b25b04b073c04b2dce4ab65caaa38b7ce2e1a99"
  end

  resource "gitdb" do
    url "https://files.pythonhosted.org/packages/53/e5/893d1f727a00d598466192360c0313c68e5aec7629c7647210b50e285f2b/gitdb-4.0.2.tar.gz"
    sha256 "598e0096bb3175a0aab3a0b5aedaa18a9a25c6707e0eca0695ba1a0baf1b2150"
  end

  resource "GitPython" do
    url "https://files.pythonhosted.org/packages/ee/bc/c8b6bc8b81b94f50bd46ed690e2677beec0071228e7f153981cb51f4d59a/GitPython-3.1.0.tar.gz"
    sha256 "e426c3b587bd58c482f0b7fe6145ff4ac7ae6c82673fc656f489719abca6f4cb"
  end

  resource "halo" do
    url "https://files.pythonhosted.org/packages/9e/5e/ff4ebf3820910e8e8a810db7287b6d99b96e09eadbc14d067e423ef07c6c/halo-0.0.29.tar.gz"
    sha256 "a8aeb0164e269d7c96fb7444b2a4caaa09b8989fa0c85e6a26e8b2c6d1af3b9d"
  end

  resource "jmespath" do
    url "https://files.pythonhosted.org/packages/5c/40/3bed01fc17e2bb1b02633efc29878dfa25da479ad19a69cfb11d2b88ea8e/jmespath-0.9.5.tar.gz"
    sha256 "cca55c8d153173e21baa59983015ad0daf603f9cb799904ff057bfb8ff8dc2d9"
  end

  resource "log-symbols" do
    url "https://files.pythonhosted.org/packages/45/87/e86645d758a4401c8c81914b6a88470634d1785c9ad09823fa4a1bd89250/log_symbols-0.0.14.tar.gz"
    sha256 "cf0bbc6fe1a8e53f0d174a716bc625c4f87043cc21eb55dd8a740cfe22680556"
  end

  resource "python-dateutil" do
    url "https://files.pythonhosted.org/packages/be/ed/5bbc91f03fa4c839c4c7360375da77f9659af5f7086b7a7bdda65771c8e0/python-dateutil-2.8.1.tar.gz"
    sha256 "73ebfe9dbf22e832286dafa60473e4cd239f8592f699aa5adaf10050e6e1823c"
  end

  resource "PyYAML" do
    url "https://files.pythonhosted.org/packages/3d/d9/ea9816aea31beeadccd03f1f8b625ecf8f645bd66744484d162d84803ce5/PyYAML-5.3.tar.gz"
    sha256 "e9f45bd5b92c7974e59bcd2dcc8631a6b6cc380a904725fce7bc08872e691615"
  end

  resource "s3transfer" do
    url "https://files.pythonhosted.org/packages/50/de/2b688c062107942486c81a739383b1432a72717d9a85a6a1a692f003c70c/s3transfer-0.3.3.tar.gz"
    sha256 "921a37e2aefc64145e7b73d50c71bb4f26f46e4c9f414dc648c6245ff92cf7db"
  end

  resource "six" do
    url "https://files.pythonhosted.org/packages/21/9f/b251f7f8a76dec1d6651be194dfba8fb8d7781d10ab3987190de8391d08e/six-1.14.0.tar.gz"
    sha256 "236bdbdce46e6e6a3d61a337c0f8b763ca1e8717c03b369e87a7ec7ce1319c0a"
  end

  resource "smmap" do
    url "https://files.pythonhosted.org/packages/94/a5/8a3453f924f7fe1ce899289f13a325708ede9d86144ba2017332735ec3a8/smmap-3.0.1.tar.gz"
    sha256 "171484fe62793e3626c8b05dd752eb2ca01854b0c55a1efc0dc4210fccb65446"
  end

  resource "spinners" do
    url "https://files.pythonhosted.org/packages/d3/91/bb331f0a43e04d950a710f402a0986a54147a35818df0e1658551c8d12e1/spinners-0.0.24.tar.gz"
    sha256 "1eb6aeb4781d72ab42ed8a01dcf20f3002bf50740d7154d12fb8c9769bf9e27f"
  end

  resource "termcolor" do
    url "https://files.pythonhosted.org/packages/8a/48/a76be51647d0eb9f10e2a4511bf3ffb8cc1e6b14e9e4fab46173aa79f981/termcolor-1.1.0.tar.gz"
    sha256 "1d6d69ce66211143803fbc56652b41d73b4a400a2891d7bf7a1cdf4c02de613b"
  end

  resource "urllib3" do
    url "https://files.pythonhosted.org/packages/09/06/3bc5b100fe7e878d3dee8f807a4febff1a40c213d2783e3246edde1f3419/urllib3-1.25.8.tar.gz"
    sha256 "87716c2d2a7121198ebcb7ce7cccf6ce5e9ba539041cfbaeecfb641dc0bf6acc"
  end

  def install
    virtualenv_install_with_resources

    bin.install libexec/"bin/stax"
    bin.env_script_all_files(libexec/"bin", :PYTHONPATH => ENV["PYTHONPATH"])
  end

  test do

    cd testpath/"homebrew" do
      system "#{bin}/stax", "--version"
    end

  end

end

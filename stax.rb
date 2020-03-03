class Stax < Formula
  include Language::Python::Virtualenv

  desc "Manage Everything Cloudformation with stax"
  homepage "https://github.com/acaire/stax"
  url "https://github.com/acaire/stax/archive/0.1.0.tar.gz"
  sha256 "1f53b56c846601af3244aa51834c778de33eba5cc9758247b8c620a987e0802e"

  depends_on "python@3.8"

  resource "boto3" do
    url "https://files.pythonhosted.org/packages/7e/16/f07e426420979f1126443c08874fb39fe753df95a15c4d066ab936fb2e6f/boto3-1.12.12.tar.gz"
    sha256 "f191e02140e9691e91fac8cb87d74ad111015a1c98c3b99a24bba9982dc5ae7e"
  end

  resource "botocore" do
    url "https://files.pythonhosted.org/packages/c1/89/03a043aee3d12fabf102367252de48a3752b7db6d628e503e408989f49d0/botocore-1.15.12.tar.gz"
    sha256 "f12dd27c759992460b8ce70bfeed600437829b0293e6a08211237f11757678e5"
  end

  resource "click" do
    url "https://files.pythonhosted.org/packages/f8/5c/f60e9d8a1e77005f664b76ff8aeaee5bc05d0a91798afd7f53fc998dbc47/Click-7.0.tar.gz"
    sha256 "5b94b49521f6456670fdb30cd82a4eca9412788a93fa6dd6df72c94d5a8ff2d7"
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

  resource "jmespath" do
    url "https://files.pythonhosted.org/packages/5c/40/3bed01fc17e2bb1b02633efc29878dfa25da479ad19a69cfb11d2b88ea8e/jmespath-0.9.5.tar.gz"
    sha256 "cca55c8d153173e21baa59983015ad0daf603f9cb799904ff057bfb8ff8dc2d9"
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

  resource "stax" do
    url "https://files.pythonhosted.org/packages/cf/52/7a375548f4c3f2e916ce880d80dc694d9b9976f60c6b639a3a6a5f9cdd42/stax-0.1.0.tar.gz"
    sha256 "bdbb4e6e07834c08dc54f9f665ddb96fe912dde40ddb0887ba91191dd29f6bb4"
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

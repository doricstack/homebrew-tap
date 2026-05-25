class McpBroker < Formula
  include Language::Python::Virtualenv

  desc "Local MCP broker for sharing upstream MCP servers across agent sessions"
  homepage "https://github.com/NavinAgrawal/mcp-broker"
  url "https://files.pythonhosted.org/packages/fd/cc/2cc103c9f71bf1777e6736461a354943f72ac182393a2c610520bc816a9d/mcp_broker-0.1.1.tar.gz"
  sha256 "e61bfc31ea099a04f74a59186c3cb2e6836c243cff4688221aa37730084a5bf3"
  license "Apache-2.0"

  depends_on "libyaml"
  depends_on "rust" => :build
  depends_on "python"

  resource "attrs" do
    url "https://files.pythonhosted.org/packages/6b/5c/685e6633917e101e5dcb62b9dd76946cbb57c26e133bae9e0cd36033c0a9/attrs-25.4.0.tar.gz"
    sha256 "16d5969b87f0859ef33a48b35d55ac1be6e42ae49d5e853b597db70c35c57e11"
  end

  resource "jsonschema" do
    url "https://files.pythonhosted.org/packages/74/69/f7185de793a29082a9f3c7728268ffb31cb5095131a9c139a74078e27336/jsonschema-4.25.1.tar.gz"
    sha256 "e4a9655ce0da0c0b67a085847e00a3a51449e1157f4f75e9fb5aa545e122eb85"
  end

  resource "jsonschema-specifications" do
    url "https://files.pythonhosted.org/packages/19/74/a633ee74eb36c44aa6d1095e7cc5569bebf04342ee146178e2d36600708b/jsonschema_specifications-2025.9.1.tar.gz"
    sha256 "b540987f239e745613c7a9176f3edb72b832a4ac465cf02712288397832b5e8d"
  end

  resource "pyyaml" do
    url "https://files.pythonhosted.org/packages/05/8e/961c0007c59b8dd7729d542c61a4d537767a59645b82a0b521206e1e25c2/pyyaml-6.0.3.tar.gz"
    sha256 "d76623373421df22fb4cf8817020cbb7ef15c725b9d5e45f17e189bfc384190f"
  end

  resource "referencing" do
    url "https://files.pythonhosted.org/packages/22/f5/df4e9027acead3ecc63e50fe1e36aca1523e1719559c499951bb4b53188f/referencing-0.37.0.tar.gz"
    sha256 "44aefc3142c5b842538163acb373e24cce6632bd54bdb01b21ad5863489f50d8"
  end

  resource "rpds-py" do
    url "https://files.pythonhosted.org/packages/98/33/23b3b3419b6a3e0f559c7c0d2ca8fc1b9448382b25245033788785921332/rpds_py-0.29.0.tar.gz"
    sha256 "fe55fe686908f50154d1dc599232016e50c243b438c3b7432f24e2895b0e5359"
  end

  resource "typing-extensions" do
    url "https://files.pythonhosted.org/packages/72/94/1a15dd82efb362ac84269196e94cf00f187f7ed21c242792a923cdb1c61f/typing_extensions-4.15.0.tar.gz"
    sha256 "0cea48d173cc12fa28ecabc3b837ea3cf6f38c6d1136f85cbaaf598984861466"
  end

  def install
    virtualenv_install_with_resources
  end

  test do
    system bin/"mcp-broker", "--help"
    system bin/"mcp-broker-client", "--help"
    system bin/"mcp-broker-daemon", "--help"
  end
end

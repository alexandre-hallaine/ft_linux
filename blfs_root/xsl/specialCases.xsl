<?xml version="1.0" encoding="ISO-8859-1"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    version="1.0">

<xsl:template match='*' mode="special">
  <xsl:choose>
<!-- Although versioned, this page is not a package. But
     the sect2 with id "xorg-env" is referred to at several
     places in the book. We have added it to the list of non
     versioned packages. -->
    <xsl:when test="@id='xorg7'">
      <xsl:apply-templates select="child::sect2" mode="special"/>
    </xsl:when>
    <xsl:when test="@id='postlfs-config-profile'">
      <xsl:text>      </xsl:text>
      <package><xsl:text>&#xA;        </xsl:text>
        <xsl:element name="name">postlfs-config-profile</xsl:element>
        <xsl:text>&#xA;        </xsl:text>
        <xsl:element name="version">1.0.0</xsl:element>
        <xsl:if
            test="document($installed-packages)//package[name=current()/@id]">
          <xsl:text>&#xA;        </xsl:text>
          <xsl:element name="inst-version">
            <xsl:value-of
              select="document($installed-packages
                              )//package[name=current()/@id]/version"/>
          </xsl:element>
        </xsl:if>
<!-- Dependencies -->
        <xsl:apply-templates select=".//para[@role='required' or
                                             @role='recommended' or
                                             @role='optional']"
                             mode="dependency"/>
<!-- End dependencies -->
        <xsl:text>&#xA;      </xsl:text>
      </package><xsl:text>&#xA;</xsl:text>
    </xsl:when>
    <xsl:when test="@id='postlfs-config-random'">
      <xsl:text>      </xsl:text>
      <package><xsl:text>&#xA;        </xsl:text>
        <xsl:element name="name">postlfs-config-random</xsl:element>
        <xsl:text>&#xA;        </xsl:text>
        <xsl:element name="version">1.0.0</xsl:element>
        <xsl:if
            test="document($installed-packages)//package[name=current()/@id]">
          <xsl:text>&#xA;        </xsl:text>
          <xsl:element name="inst-version">
            <xsl:value-of
              select="document($installed-packages
                              )//package[name=current()/@id]/version"/>
          </xsl:element>
        </xsl:if>
<!-- Dependencies -->
        <xsl:apply-templates select=".//para[@role='required' or
                                             @role='recommended' or
                                             @role='optional']"
                             mode="dependency"/>
<!-- End dependencies -->
        <xsl:text>&#xA;      </xsl:text>
      </package><xsl:text>&#xA;</xsl:text>
    </xsl:when>
    <xsl:when test="@id='postlfs-config-vimrc'">
      <xsl:text>      </xsl:text>
      <package><xsl:text>&#xA;        </xsl:text>
        <xsl:element name="name">postlfs-config-vimrc</xsl:element>
        <xsl:text>&#xA;        </xsl:text>
        <xsl:element name="version">1.0.0</xsl:element>
        <xsl:if
            test="document($installed-packages)//package[name=current()/@id]">
          <xsl:text>&#xA;        </xsl:text>
          <xsl:element name="inst-version">
            <xsl:value-of
              select="document($installed-packages
                              )//package[name=current()/@id]/version"/>
          </xsl:element>
        </xsl:if>
<!-- Dependencies -->
        <xsl:apply-templates select=".//para[@role='required' or
                                             @role='recommended' or
                                             @role='optional']"
                             mode="dependency"/>
<!-- End dependencies -->
        <xsl:text>&#xA;      </xsl:text>
      </package><xsl:text>&#xA;</xsl:text>
    </xsl:when>
    <xsl:when test="@id='initramfs'">
      <xsl:text>      </xsl:text>
      <package><xsl:text>&#xA;        </xsl:text>
        <xsl:element name="name">initramfs</xsl:element>
        <xsl:text>&#xA;        </xsl:text>
        <xsl:element name="version">1.0.0</xsl:element>
        <xsl:if
            test="document($installed-packages)//package[name=current()/@id]">
          <xsl:text>&#xA;        </xsl:text>
          <xsl:element name="inst-version">
            <xsl:value-of
              select="document($installed-packages
                              )//package[name=current()/@id]/version"/>
          </xsl:element>
        </xsl:if>
<!-- Dependencies -->
        <xsl:apply-templates select=".//para[@role='required' or
                                             @role='recommended' or
                                             @role='optional']"
                             mode="dependency"/>
<!-- End dependencies -->
        <xsl:text>&#xA;      </xsl:text>
      </package><xsl:text>&#xA;</xsl:text>
    </xsl:when>
    <xsl:when test="@id='xorg-env'">
      <xsl:text>      </xsl:text>
      <package><xsl:text>&#xA;        </xsl:text>
        <xsl:element name="name">xorg-env</xsl:element>
        <xsl:text>&#xA;        </xsl:text>
        <xsl:element name="version">1.0.0</xsl:element>
        <xsl:if
            test="document($installed-packages)//package[name=current()/@id]">
          <xsl:text>&#xA;        </xsl:text>
          <xsl:element name="inst-version">
            <xsl:value-of
              select="document($installed-packages
                              )//package[name=current()/@id]/version"/>
          </xsl:element>
        </xsl:if>
<!-- Dependencies -->
        <xsl:apply-templates select=".//para[@role='required' or
                                             @role='recommended' or
                                             @role='optional']"
                             mode="dependency"/>
<!-- End dependencies -->
        <xsl:text>&#xA;      </xsl:text>
      </package><xsl:text>&#xA;</xsl:text>
    </xsl:when>
    <xsl:when test="@id='kde-pre-install-config'">
      <xsl:text>      </xsl:text>
      <package><xsl:text>&#xA;        </xsl:text>
        <xsl:element name="name">kde-pre-install-config</xsl:element>
        <xsl:text>&#xA;        </xsl:text>
        <xsl:element name="version">1.0.0</xsl:element>
        <xsl:if
            test="document($installed-packages)//package[name=current()/@id]">
          <xsl:text>&#xA;        </xsl:text>
          <xsl:element name="inst-version">
            <xsl:value-of
              select="document($installed-packages
                              )//package[name=current()/@id]/version"/>
          </xsl:element>
        </xsl:if>
<!-- Dependencies -->
        <xsl:apply-templates select=".//para[@role='required' or
                                             @role='recommended' or
                                             @role='optional']"
                             mode="dependency"/>
<!-- End dependencies -->
        <xsl:text>&#xA;      </xsl:text>
      </package><xsl:text>&#xA;</xsl:text>
    </xsl:when>
    <xsl:when test="@id='kf5-intro'">
      <xsl:text>      </xsl:text>
      <package><xsl:text>&#xA;        </xsl:text>
        <xsl:element name="name">kf5-intro</xsl:element>
        <xsl:text>&#xA;        </xsl:text>
        <xsl:element name="version">1.0.0</xsl:element>
        <xsl:if
            test="document($installed-packages)//package[name=current()/@id]">
          <xsl:text>&#xA;        </xsl:text>
          <xsl:element name="inst-version">
            <xsl:value-of
              select="document($installed-packages
                              )//package[name=current()/@id]/version"/>
          </xsl:element>
        </xsl:if>
<!-- Dependencies -->
        <xsl:apply-templates select=".//para[@role='required' or
                                             @role='recommended' or
                                             @role='optional']"
                             mode="dependency"/>
<!-- End dependencies -->
        <xsl:text>&#xA;      </xsl:text>
      </package><xsl:text>&#xA;</xsl:text>
    </xsl:when>
    <xsl:when test="@id='lxqt-pre-install'">
      <xsl:text>      </xsl:text>
      <package><xsl:text>&#xA;        </xsl:text>
        <xsl:element name="name">lxqt-pre-install</xsl:element>
        <xsl:text>&#xA;        </xsl:text>
        <xsl:element name="version">1.0.0</xsl:element>
        <xsl:if
            test="document($installed-packages)//package[name=current()/@id]">
          <xsl:text>&#xA;        </xsl:text>
          <xsl:element name="inst-version">
            <xsl:value-of
              select="document($installed-packages
                              )//package[name=current()/@id]/version"/>
          </xsl:element>
        </xsl:if>
<!-- Dependencies -->
        <xsl:apply-templates select=".//para[@role='required' or
                                             @role='recommended' or
                                             @role='optional']"
                             mode="dependency"/>
<!-- End dependencies -->
        <xsl:text>&#xA;      </xsl:text>
      </package><xsl:text>&#xA;</xsl:text>
    </xsl:when>
    <xsl:when test="@id='lxqt-post-install'">
      <xsl:text>      </xsl:text>
      <package><xsl:text>&#xA;        </xsl:text>
        <xsl:element name="name">lxqt-post-install</xsl:element>
        <xsl:text>&#xA;        </xsl:text>
        <xsl:element name="version">1.0.0</xsl:element>
        <xsl:if
            test="document($installed-packages)//package[name=current()/@id]">
          <xsl:text>&#xA;        </xsl:text>
          <xsl:element name="inst-version">
            <xsl:value-of
              select="document($installed-packages
                              )//package[name=current()/@id]/version"/>
          </xsl:element>
        </xsl:if>
<!-- Dependencies -->
        <xsl:apply-templates select=".//para[@role='required' or
                                             @role='recommended' or
                                             @role='optional']"
                             mode="dependency"/>
<!-- End dependencies -->
        <xsl:text>&#xA;      </xsl:text>
      </package><xsl:text>&#xA;</xsl:text>
    </xsl:when>
    <xsl:when test="@id='ojdk-conf'">
      <xsl:text>      </xsl:text>
      <package><xsl:text>&#xA;        </xsl:text>
        <xsl:element name="name">ojdk-conf</xsl:element>
        <xsl:text>&#xA;        </xsl:text>
        <xsl:element name="version">1.0.0</xsl:element>
        <xsl:if
            test="document($installed-packages)//package[name=current()/@id]">
          <xsl:text>&#xA;        </xsl:text>
          <xsl:element name="inst-version">
            <xsl:value-of
              select="document($installed-packages
                              )//package[name=current()/@id]/version"/>
          </xsl:element>
        </xsl:if>
<!-- Dependencies -->
        <xsl:apply-templates select=".//para[@role='required' or
                                             @role='recommended' or
                                             @role='optional']"
                             mode="dependency"/>
<!-- End dependencies -->
        <xsl:text>&#xA;      </xsl:text>
      </package><xsl:text>&#xA;</xsl:text>
    </xsl:when>
    <xsl:when test="@id='tex-path'">
      <xsl:text>      </xsl:text>
      <package><xsl:text>&#xA;        </xsl:text>
        <xsl:element name="name">tex-path</xsl:element>
        <xsl:text>&#xA;        </xsl:text>
        <xsl:element name="version">1.0.0</xsl:element>
        <xsl:if
            test="document($installed-packages)//package[name=current()/@id]">
          <xsl:text>&#xA;        </xsl:text>
          <xsl:element name="inst-version">
            <xsl:value-of
              select="document($installed-packages
                              )//package[name=current()/@id]/version"/>
          </xsl:element>
        </xsl:if>
<!-- Dependencies -->
        <xsl:apply-templates select=".//para[@role='required' or
                                             @role='recommended' or
                                             @role='optional']"
                             mode="dependency"/>
<!-- End dependencies -->
        <xsl:text>&#xA;      </xsl:text>
      </package><xsl:text>&#xA;</xsl:text>
    </xsl:when>
    <xsl:when test="@id='xorg7-app'">
      <xsl:text>      </xsl:text>
      <package><xsl:text>&#xA;        </xsl:text>
        <xsl:element name="name">xorg7-app</xsl:element>
        <xsl:text>&#xA;        </xsl:text>
        <module><xsl:text>&#xA;          </xsl:text>
          <xsl:element name="name">iceauth</xsl:element>
          <xsl:element name="version">1.0.9</xsl:element>
          <xsl:if test="document($installed-packages)//package[name='iceauth']">
            <xsl:element name="inst-version">
              <xsl:value-of
                select="document($installed-packages
                                )//package[name='iceauth']/version"/>
            </xsl:element>
          </xsl:if>
<!-- Dependencies -->
          <xsl:apply-templates select=".//para[@role='required' or
                                               @role='recommended' or
                                               @role='optional']"
                               mode="dependency"/>
<!-- End dependencies -->
        </module>
        <module><xsl:text>&#xA;          </xsl:text>
          <xsl:element name="name">luit</xsl:element>
          <xsl:element name="version">1.1.1</xsl:element>
          <xsl:if test="document($installed-packages)//package[name='luit']">
            <xsl:element name="inst-version">
              <xsl:value-of
                select="document($installed-packages
                                )//package[name='luit']/version"/>
            </xsl:element>
          </xsl:if>
<!-- Dependencies -->
          <xsl:element name="dependency">
            <xsl:attribute name="status">required</xsl:attribute>
            <xsl:attribute name="build">before</xsl:attribute>
            <xsl:attribute name="name">iceauth</xsl:attribute>
            <xsl:attribute name="type">ref</xsl:attribute>
          </xsl:element>
<!-- End dependencies -->
        </module>
        <module><xsl:text>&#xA;          </xsl:text>
          <xsl:element name="name">mkfontscale</xsl:element>
          <xsl:element name="version">1.2.2</xsl:element>
          <xsl:if test="document($installed-packages)//package[name='mkfontscale']">
            <xsl:element name="inst-version">
              <xsl:value-of
                select="document($installed-packages
                                )//package[name='mkfontscale']/version"/>
            </xsl:element>
          </xsl:if>
<!-- Dependencies -->
          <xsl:element name="dependency">
            <xsl:attribute name="status">required</xsl:attribute>
            <xsl:attribute name="build">before</xsl:attribute>
            <xsl:attribute name="name">luit</xsl:attribute>
            <xsl:attribute name="type">ref</xsl:attribute>
          </xsl:element>
<!-- End dependencies -->
        </module>
        <module><xsl:text>&#xA;          </xsl:text>
          <xsl:element name="name">sessreg</xsl:element>
          <xsl:element name="version">1.1.2</xsl:element>
          <xsl:if test="document($installed-packages)//package[name='sessreg']">
            <xsl:element name="inst-version">
              <xsl:value-of
                select="document($installed-packages
                                )//package[name='sessreg']/version"/>
            </xsl:element>
          </xsl:if>
<!-- Dependencies -->
          <xsl:element name="dependency">
            <xsl:attribute name="status">required</xsl:attribute>
            <xsl:attribute name="build">before</xsl:attribute>
            <xsl:attribute name="name">mkfontscale</xsl:attribute>
            <xsl:attribute name="type">ref</xsl:attribute>
          </xsl:element>
<!-- End dependencies -->
        </module>
        <module><xsl:text>&#xA;          </xsl:text>
          <xsl:element name="name">setxkbmap</xsl:element>
          <xsl:element name="version">1.3.3</xsl:element>
          <xsl:if test="document($installed-packages)//package[name='setxkbmap']">
            <xsl:element name="inst-version">
              <xsl:value-of
                select="document($installed-packages
                                )//package[name='setxkbmap']/version"/>
            </xsl:element>
          </xsl:if>
<!-- Dependencies -->
          <xsl:element name="dependency">
            <xsl:attribute name="status">required</xsl:attribute>
            <xsl:attribute name="build">before</xsl:attribute>
            <xsl:attribute name="name">sessreg</xsl:attribute>
            <xsl:attribute name="type">ref</xsl:attribute>
          </xsl:element>
<!-- End dependencies -->
        </module>
        <module><xsl:text>&#xA;          </xsl:text>
          <xsl:element name="name">smproxy</xsl:element>
          <xsl:element name="version">1.0.6</xsl:element>
          <xsl:if test="document($installed-packages)//package[name='smproxy']">
            <xsl:element name="inst-version">
              <xsl:value-of
                select="document($installed-packages
                                )//package[name='smproxy']/version"/>
            </xsl:element>
          </xsl:if>
<!-- Dependencies -->
          <xsl:element name="dependency">
            <xsl:attribute name="status">required</xsl:attribute>
            <xsl:attribute name="build">before</xsl:attribute>
            <xsl:attribute name="name">setxkbmap</xsl:attribute>
            <xsl:attribute name="type">ref</xsl:attribute>
          </xsl:element>
<!-- End dependencies -->
        </module>
        <module><xsl:text>&#xA;          </xsl:text>
          <xsl:element name="name">x11perf</xsl:element>
          <xsl:element name="version">1.6.1</xsl:element>
          <xsl:if test="document($installed-packages)//package[name='x11perf']">
            <xsl:element name="inst-version">
              <xsl:value-of
                select="document($installed-packages
                                )//package[name='x11perf']/version"/>
            </xsl:element>
          </xsl:if>
<!-- Dependencies -->
          <xsl:element name="dependency">
            <xsl:attribute name="status">required</xsl:attribute>
            <xsl:attribute name="build">before</xsl:attribute>
            <xsl:attribute name="name">smproxy</xsl:attribute>
            <xsl:attribute name="type">ref</xsl:attribute>
          </xsl:element>
<!-- End dependencies -->
        </module>
        <module><xsl:text>&#xA;          </xsl:text>
          <xsl:element name="name">xauth</xsl:element>
          <xsl:element name="version">1.1.2</xsl:element>
          <xsl:if test="document($installed-packages)//package[name='xauth']">
            <xsl:element name="inst-version">
              <xsl:value-of
                select="document($installed-packages
                                )//package[name='xauth']/version"/>
            </xsl:element>
          </xsl:if>
<!-- Dependencies -->
          <xsl:element name="dependency">
            <xsl:attribute name="status">required</xsl:attribute>
            <xsl:attribute name="build">before</xsl:attribute>
            <xsl:attribute name="name">x11perf</xsl:attribute>
            <xsl:attribute name="type">ref</xsl:attribute>
          </xsl:element>
<!-- End dependencies -->
        </module>
        <module><xsl:text>&#xA;          </xsl:text>
          <xsl:element name="name">xbacklight</xsl:element>
          <xsl:element name="version">1.2.3</xsl:element>
          <xsl:if test="document($installed-packages)//package[name='xbacklight']">
            <xsl:element name="inst-version">
              <xsl:value-of
                select="document($installed-packages
                                )//package[name='xbacklight']/version"/>
            </xsl:element>
          </xsl:if>
<!-- Dependencies -->
          <xsl:element name="dependency">
            <xsl:attribute name="status">required</xsl:attribute>
            <xsl:attribute name="build">before</xsl:attribute>
            <xsl:attribute name="name">xauth</xsl:attribute>
            <xsl:attribute name="type">ref</xsl:attribute>
          </xsl:element>
<!-- End dependencies -->
        </module>
        <module><xsl:text>&#xA;          </xsl:text>
          <xsl:element name="name">xcmsdb</xsl:element>
          <xsl:element name="version">1.0.6</xsl:element>
          <xsl:if test="document($installed-packages)//package[name='xcmsdb']">
            <xsl:element name="inst-version">
              <xsl:value-of
                select="document($installed-packages
                                )//package[name='xcmsdb']/version"/>
            </xsl:element>
          </xsl:if>
<!-- Dependencies -->
          <xsl:element name="dependency">
            <xsl:attribute name="status">required</xsl:attribute>
            <xsl:attribute name="build">before</xsl:attribute>
            <xsl:attribute name="name">xbacklight</xsl:attribute>
            <xsl:attribute name="type">ref</xsl:attribute>
          </xsl:element>
<!-- End dependencies -->
        </module>
        <module><xsl:text>&#xA;          </xsl:text>
          <xsl:element name="name">xcursorgen</xsl:element>
          <xsl:element name="version">1.0.7</xsl:element>
          <xsl:if test="document($installed-packages)//package[name='xcursorgen']">
            <xsl:element name="inst-version">
              <xsl:value-of
                select="document($installed-packages
                                )//package[name='xcursorgen']/version"/>
            </xsl:element>
          </xsl:if>
<!-- Dependencies -->
          <xsl:element name="dependency">
            <xsl:attribute name="status">required</xsl:attribute>
            <xsl:attribute name="build">before</xsl:attribute>
            <xsl:attribute name="name">xcmsdb</xsl:attribute>
            <xsl:attribute name="type">ref</xsl:attribute>
          </xsl:element>
<!-- End dependencies -->
        </module>
        <module><xsl:text>&#xA;          </xsl:text>
          <xsl:element name="name">xdpyinfo</xsl:element>
          <xsl:element name="version">1.3.3</xsl:element>
          <xsl:if test="document($installed-packages)//package[name='xdpyinfo']">
            <xsl:element name="inst-version">
              <xsl:value-of
                select="document($installed-packages
                                )//package[name='xdpyinfo']/version"/>
            </xsl:element>
          </xsl:if>
<!-- Dependencies -->
          <xsl:element name="dependency">
            <xsl:attribute name="status">required</xsl:attribute>
            <xsl:attribute name="build">before</xsl:attribute>
            <xsl:attribute name="name">xcursorgen</xsl:attribute>
            <xsl:attribute name="type">ref</xsl:attribute>
          </xsl:element>
<!-- End dependencies -->
        </module>
        <module><xsl:text>&#xA;          </xsl:text>
          <xsl:element name="name">xdriinfo</xsl:element>
          <xsl:element name="version">1.0.6</xsl:element>
          <xsl:if test="document($installed-packages)//package[name='xdriinfo']">
            <xsl:element name="inst-version">
              <xsl:value-of
                select="document($installed-packages
                                )//package[name='xdriinfo']/version"/>
            </xsl:element>
          </xsl:if>
<!-- Dependencies -->
          <xsl:element name="dependency">
            <xsl:attribute name="status">required</xsl:attribute>
            <xsl:attribute name="build">before</xsl:attribute>
            <xsl:attribute name="name">xdpyinfo</xsl:attribute>
            <xsl:attribute name="type">ref</xsl:attribute>
          </xsl:element>
<!-- End dependencies -->
        </module>
        <module><xsl:text>&#xA;          </xsl:text>
          <xsl:element name="name">xev</xsl:element>
          <xsl:element name="version">1.2.5</xsl:element>
          <xsl:if test="document($installed-packages)//package[name='xev']">
            <xsl:element name="inst-version">
              <xsl:value-of
                select="document($installed-packages
                                )//package[name='xev']/version"/>
            </xsl:element>
          </xsl:if>
<!-- Dependencies -->
          <xsl:element name="dependency">
            <xsl:attribute name="status">required</xsl:attribute>
            <xsl:attribute name="build">before</xsl:attribute>
            <xsl:attribute name="name">xdriinfo</xsl:attribute>
            <xsl:attribute name="type">ref</xsl:attribute>
          </xsl:element>
<!-- End dependencies -->
        </module>
        <module><xsl:text>&#xA;          </xsl:text>
          <xsl:element name="name">xgamma</xsl:element>
          <xsl:element name="version">1.0.6</xsl:element>
          <xsl:if test="document($installed-packages)//package[name='xgamma']">
            <xsl:element name="inst-version">
              <xsl:value-of
                select="document($installed-packages
                                )//package[name='xgamma']/version"/>
            </xsl:element>
          </xsl:if>
<!-- Dependencies -->
          <xsl:element name="dependency">
            <xsl:attribute name="status">required</xsl:attribute>
            <xsl:attribute name="build">before</xsl:attribute>
            <xsl:attribute name="name">xev</xsl:attribute>
            <xsl:attribute name="type">ref</xsl:attribute>
          </xsl:element>
<!-- End dependencies -->
        </module>
        <module><xsl:text>&#xA;          </xsl:text>
          <xsl:element name="name">xhost</xsl:element>
          <xsl:element name="version">1.0.8</xsl:element>
          <xsl:if test="document($installed-packages)//package[name='xhost']">
            <xsl:element name="inst-version">
              <xsl:value-of
                select="document($installed-packages
                                )//package[name='xhost']/version"/>
            </xsl:element>
          </xsl:if>
<!-- Dependencies -->
          <xsl:element name="dependency">
            <xsl:attribute name="status">required</xsl:attribute>
            <xsl:attribute name="build">before</xsl:attribute>
            <xsl:attribute name="name">xgamma</xsl:attribute>
            <xsl:attribute name="type">ref</xsl:attribute>
          </xsl:element>
<!-- End dependencies -->
        </module>
        <module><xsl:text>&#xA;          </xsl:text>
          <xsl:element name="name">xinput</xsl:element>
          <xsl:element name="version">1.6.3</xsl:element>
          <xsl:if test="document($installed-packages)//package[name='xinput']">
            <xsl:element name="inst-version">
              <xsl:value-of
                select="document($installed-packages
                                )//package[name='xinput']/version"/>
            </xsl:element>
          </xsl:if>
<!-- Dependencies -->
          <xsl:element name="dependency">
            <xsl:attribute name="status">required</xsl:attribute>
            <xsl:attribute name="build">before</xsl:attribute>
            <xsl:attribute name="name">xhost</xsl:attribute>
            <xsl:attribute name="type">ref</xsl:attribute>
          </xsl:element>
<!-- End dependencies -->
        </module>
        <module><xsl:text>&#xA;          </xsl:text>
          <xsl:element name="name">xkbcomp</xsl:element>
          <xsl:element name="version">1.4.5</xsl:element>
          <xsl:if test="document($installed-packages)//package[name='xkbcomp']">
            <xsl:element name="inst-version">
              <xsl:value-of
                select="document($installed-packages
                                )//package[name='xkbcomp']/version"/>
            </xsl:element>
          </xsl:if>
<!-- Dependencies -->
          <xsl:element name="dependency">
            <xsl:attribute name="status">required</xsl:attribute>
            <xsl:attribute name="build">before</xsl:attribute>
            <xsl:attribute name="name">xinput</xsl:attribute>
            <xsl:attribute name="type">ref</xsl:attribute>
          </xsl:element>
<!-- End dependencies -->
        </module>
        <module><xsl:text>&#xA;          </xsl:text>
          <xsl:element name="name">xkbevd</xsl:element>
          <xsl:element name="version">1.1.4</xsl:element>
          <xsl:if test="document($installed-packages)//package[name='xkbevd']">
            <xsl:element name="inst-version">
              <xsl:value-of
                select="document($installed-packages
                                )//package[name='xkbevd']/version"/>
            </xsl:element>
          </xsl:if>
<!-- Dependencies -->
          <xsl:element name="dependency">
            <xsl:attribute name="status">required</xsl:attribute>
            <xsl:attribute name="build">before</xsl:attribute>
            <xsl:attribute name="name">xkbcomp</xsl:attribute>
            <xsl:attribute name="type">ref</xsl:attribute>
          </xsl:element>
<!-- End dependencies -->
        </module>
        <module><xsl:text>&#xA;          </xsl:text>
          <xsl:element name="name">xkbutils</xsl:element>
          <xsl:element name="version">1.0.5</xsl:element>
          <xsl:if test="document($installed-packages)//package[name='xkbutils']">
            <xsl:element name="inst-version">
              <xsl:value-of
                select="document($installed-packages
                                )//package[name='xkbutils']/version"/>
            </xsl:element>
          </xsl:if>
<!-- Dependencies -->
          <xsl:element name="dependency">
            <xsl:attribute name="status">required</xsl:attribute>
            <xsl:attribute name="build">before</xsl:attribute>
            <xsl:attribute name="name">xkbevd</xsl:attribute>
            <xsl:attribute name="type">ref</xsl:attribute>
          </xsl:element>
<!-- End dependencies -->
        </module>
        <module><xsl:text>&#xA;          </xsl:text>
          <xsl:element name="name">xkill</xsl:element>
          <xsl:element name="version">1.0.5</xsl:element>
          <xsl:if test="document($installed-packages)//package[name='xkill']">
            <xsl:element name="inst-version">
              <xsl:value-of
                select="document($installed-packages
                                )//package[name='xkill']/version"/>
            </xsl:element>
          </xsl:if>
<!-- Dependencies -->
          <xsl:element name="dependency">
            <xsl:attribute name="status">required</xsl:attribute>
            <xsl:attribute name="build">before</xsl:attribute>
            <xsl:attribute name="name">xkbutils</xsl:attribute>
            <xsl:attribute name="type">ref</xsl:attribute>
          </xsl:element>
<!-- End dependencies -->
        </module>
        <module><xsl:text>&#xA;          </xsl:text>
          <xsl:element name="name">xlsatoms</xsl:element>
          <xsl:element name="version">1.1.3</xsl:element>
          <xsl:if test="document($installed-packages)//package[name='xlsatoms']">
            <xsl:element name="inst-version">
              <xsl:value-of
                select="document($installed-packages
                                )//package[name='xlsatoms']/version"/>
            </xsl:element>
          </xsl:if>
<!-- Dependencies -->
          <xsl:element name="dependency">
            <xsl:attribute name="status">required</xsl:attribute>
            <xsl:attribute name="build">before</xsl:attribute>
            <xsl:attribute name="name">xkill</xsl:attribute>
            <xsl:attribute name="type">ref</xsl:attribute>
          </xsl:element>
<!-- End dependencies -->
        </module>
        <module><xsl:text>&#xA;          </xsl:text>
          <xsl:element name="name">xlsclients</xsl:element>
          <xsl:element name="version">1.1.4</xsl:element>
          <xsl:if test="document($installed-packages)//package[name='xlsclients']">
            <xsl:element name="inst-version">
              <xsl:value-of
                select="document($installed-packages
                                )//package[name='xlsclients']/version"/>
            </xsl:element>
          </xsl:if>
<!-- Dependencies -->
          <xsl:element name="dependency">
            <xsl:attribute name="status">required</xsl:attribute>
            <xsl:attribute name="build">before</xsl:attribute>
            <xsl:attribute name="name">xlsatoms</xsl:attribute>
            <xsl:attribute name="type">ref</xsl:attribute>
          </xsl:element>
<!-- End dependencies -->
        </module>
        <module><xsl:text>&#xA;          </xsl:text>
          <xsl:element name="name">xmessage</xsl:element>
          <xsl:element name="version">1.0.6</xsl:element>
          <xsl:if test="document($installed-packages)//package[name='xmessage']">
            <xsl:element name="inst-version">
              <xsl:value-of
                select="document($installed-packages
                                )//package[name='xmessage']/version"/>
            </xsl:element>
          </xsl:if>
<!-- Dependencies -->
          <xsl:element name="dependency">
            <xsl:attribute name="status">required</xsl:attribute>
            <xsl:attribute name="build">before</xsl:attribute>
            <xsl:attribute name="name">xlsclients</xsl:attribute>
            <xsl:attribute name="type">ref</xsl:attribute>
          </xsl:element>
<!-- End dependencies -->
        </module>
        <module><xsl:text>&#xA;          </xsl:text>
          <xsl:element name="name">xmodmap</xsl:element>
          <xsl:element name="version">1.0.11</xsl:element>
          <xsl:if test="document($installed-packages)//package[name='xmodmap']">
            <xsl:element name="inst-version">
              <xsl:value-of
                select="document($installed-packages
                                )//package[name='xmodmap']/version"/>
            </xsl:element>
          </xsl:if>
<!-- Dependencies -->
          <xsl:element name="dependency">
            <xsl:attribute name="status">required</xsl:attribute>
            <xsl:attribute name="build">before</xsl:attribute>
            <xsl:attribute name="name">xmessage</xsl:attribute>
            <xsl:attribute name="type">ref</xsl:attribute>
          </xsl:element>
<!-- End dependencies -->
        </module>
        <module><xsl:text>&#xA;          </xsl:text>
          <xsl:element name="name">xpr</xsl:element>
          <xsl:element name="version">1.1.0</xsl:element>
          <xsl:if test="document($installed-packages)//package[name='xpr']">
            <xsl:element name="inst-version">
              <xsl:value-of
                select="document($installed-packages
                                )//package[name='xpr']/version"/>
            </xsl:element>
          </xsl:if>
<!-- Dependencies -->
          <xsl:element name="dependency">
            <xsl:attribute name="status">required</xsl:attribute>
            <xsl:attribute name="build">before</xsl:attribute>
            <xsl:attribute name="name">xmodmap</xsl:attribute>
            <xsl:attribute name="type">ref</xsl:attribute>
          </xsl:element>
<!-- End dependencies -->
        </module>
        <module><xsl:text>&#xA;          </xsl:text>
          <xsl:element name="name">xprop</xsl:element>
          <xsl:element name="version">1.2.5</xsl:element>
          <xsl:if test="document($installed-packages)//package[name='xprop']">
            <xsl:element name="inst-version">
              <xsl:value-of
                select="document($installed-packages
                                )//package[name='xprop']/version"/>
            </xsl:element>
          </xsl:if>
<!-- Dependencies -->
          <xsl:element name="dependency">
            <xsl:attribute name="status">required</xsl:attribute>
            <xsl:attribute name="build">before</xsl:attribute>
            <xsl:attribute name="name">xpr</xsl:attribute>
            <xsl:attribute name="type">ref</xsl:attribute>
          </xsl:element>
<!-- End dependencies -->
        </module>
        <module><xsl:text>&#xA;          </xsl:text>
          <xsl:element name="name">xrandr</xsl:element>
          <xsl:element name="version">1.5.1</xsl:element>
          <xsl:if test="document($installed-packages)//package[name='xrandr']">
            <xsl:element name="inst-version">
              <xsl:value-of
                select="document($installed-packages
                                )//package[name='xrandr']/version"/>
            </xsl:element>
          </xsl:if>
<!-- Dependencies -->
          <xsl:element name="dependency">
            <xsl:attribute name="status">required</xsl:attribute>
            <xsl:attribute name="build">before</xsl:attribute>
            <xsl:attribute name="name">xprop</xsl:attribute>
            <xsl:attribute name="type">ref</xsl:attribute>
          </xsl:element>
<!-- End dependencies -->
        </module>
        <module><xsl:text>&#xA;          </xsl:text>
          <xsl:element name="name">xrdb</xsl:element>
          <xsl:element name="version">1.2.1</xsl:element>
          <xsl:if test="document($installed-packages)//package[name='xrdb']">
            <xsl:element name="inst-version">
              <xsl:value-of
                select="document($installed-packages
                                )//package[name='xrdb']/version"/>
            </xsl:element>
          </xsl:if>
<!-- Dependencies -->
          <xsl:element name="dependency">
            <xsl:attribute name="status">required</xsl:attribute>
            <xsl:attribute name="build">before</xsl:attribute>
            <xsl:attribute name="name">xrandr</xsl:attribute>
            <xsl:attribute name="type">ref</xsl:attribute>
          </xsl:element>
<!-- End dependencies -->
        </module>
        <module><xsl:text>&#xA;          </xsl:text>
          <xsl:element name="name">xrefresh</xsl:element>
          <xsl:element name="version">1.0.7</xsl:element>
          <xsl:if test="document($installed-packages)//package[name='xrefresh']">
            <xsl:element name="inst-version">
              <xsl:value-of
                select="document($installed-packages
                                )//package[name='xrefresh']/version"/>
            </xsl:element>
          </xsl:if>
<!-- Dependencies -->
          <xsl:element name="dependency">
            <xsl:attribute name="status">required</xsl:attribute>
            <xsl:attribute name="build">before</xsl:attribute>
            <xsl:attribute name="name">xrdb</xsl:attribute>
            <xsl:attribute name="type">ref</xsl:attribute>
          </xsl:element>
<!-- End dependencies -->
        </module>
        <module><xsl:text>&#xA;          </xsl:text>
          <xsl:element name="name">xset</xsl:element>
          <xsl:element name="version">1.2.4</xsl:element>
          <xsl:if test="document($installed-packages)//package[name='xset']">
            <xsl:element name="inst-version">
              <xsl:value-of
                select="document($installed-packages
                                )//package[name='xset']/version"/>
            </xsl:element>
          </xsl:if>
<!-- Dependencies -->
          <xsl:element name="dependency">
            <xsl:attribute name="status">required</xsl:attribute>
            <xsl:attribute name="build">before</xsl:attribute>
            <xsl:attribute name="name">xrefresh</xsl:attribute>
            <xsl:attribute name="type">ref</xsl:attribute>
          </xsl:element>
<!-- End dependencies -->
        </module>
        <module><xsl:text>&#xA;          </xsl:text>
          <xsl:element name="name">xsetroot</xsl:element>
          <xsl:element name="version">1.1.2</xsl:element>
          <xsl:if test="document($installed-packages)//package[name='xsetroot']">
            <xsl:element name="inst-version">
              <xsl:value-of
                select="document($installed-packages
                                )//package[name='xsetroot']/version"/>
            </xsl:element>
          </xsl:if>
<!-- Dependencies -->
          <xsl:element name="dependency">
            <xsl:attribute name="status">required</xsl:attribute>
            <xsl:attribute name="build">before</xsl:attribute>
            <xsl:attribute name="name">xset</xsl:attribute>
            <xsl:attribute name="type">ref</xsl:attribute>
          </xsl:element>
<!-- End dependencies -->
        </module>
        <module><xsl:text>&#xA;          </xsl:text>
          <xsl:element name="name">xvinfo</xsl:element>
          <xsl:element name="version">1.1.4</xsl:element>
          <xsl:if test="document($installed-packages)//package[name='xvinfo']">
            <xsl:element name="inst-version">
              <xsl:value-of
                select="document($installed-packages
                                )//package[name='xvinfo']/version"/>
            </xsl:element>
          </xsl:if>
<!-- Dependencies -->
          <xsl:element name="dependency">
            <xsl:attribute name="status">required</xsl:attribute>
            <xsl:attribute name="build">before</xsl:attribute>
            <xsl:attribute name="name">xsetroot</xsl:attribute>
            <xsl:attribute name="type">ref</xsl:attribute>
          </xsl:element>
<!-- End dependencies -->
        </module>
        <module><xsl:text>&#xA;          </xsl:text>
          <xsl:element name="name">xwd</xsl:element>
          <xsl:element name="version">1.0.8</xsl:element>
          <xsl:if test="document($installed-packages)//package[name='xwd']">
            <xsl:element name="inst-version">
              <xsl:value-of
                select="document($installed-packages
                                )//package[name='xwd']/version"/>
            </xsl:element>
          </xsl:if>
<!-- Dependencies -->
          <xsl:element name="dependency">
            <xsl:attribute name="status">required</xsl:attribute>
            <xsl:attribute name="build">before</xsl:attribute>
            <xsl:attribute name="name">xvinfo</xsl:attribute>
            <xsl:attribute name="type">ref</xsl:attribute>
          </xsl:element>
<!-- End dependencies -->
        </module>
        <module><xsl:text>&#xA;          </xsl:text>
          <xsl:element name="name">xwininfo</xsl:element>
          <xsl:element name="version">1.1.5</xsl:element>
          <xsl:if test="document($installed-packages)//package[name='xwininfo']">
            <xsl:element name="inst-version">
              <xsl:value-of
                select="document($installed-packages
                                )//package[name='xwininfo']/version"/>
            </xsl:element>
          </xsl:if>
<!-- Dependencies -->
          <xsl:element name="dependency">
            <xsl:attribute name="status">required</xsl:attribute>
            <xsl:attribute name="build">before</xsl:attribute>
            <xsl:attribute name="name">xwd</xsl:attribute>
            <xsl:attribute name="type">ref</xsl:attribute>
          </xsl:element>
<!-- End dependencies -->
        </module>
        <module><xsl:text>&#xA;          </xsl:text>
          <xsl:element name="name">xwud</xsl:element>
          <xsl:element name="version">1.0.6</xsl:element>
          <xsl:if test="document($installed-packages)//package[name='xwud']">
            <xsl:element name="inst-version">
              <xsl:value-of
                select="document($installed-packages
                                )//package[name='xwud']/version"/>
            </xsl:element>
          </xsl:if>
<!-- Dependencies -->
          <xsl:element name="dependency">
            <xsl:attribute name="status">required</xsl:attribute>
            <xsl:attribute name="build">before</xsl:attribute>
            <xsl:attribute name="name">xwininfo</xsl:attribute>
            <xsl:attribute name="type">ref</xsl:attribute>
          </xsl:element>
<!-- End dependencies -->
        </module>
     </package>
   </xsl:when>
    <xsl:when test="@id='xorg7-font'">
      <xsl:text>      </xsl:text>
      <package><xsl:text>&#xA;        </xsl:text>
        <xsl:element name="name">xorg7-font</xsl:element>
        <xsl:text>&#xA;        </xsl:text>
        <module><xsl:text>&#xA;          </xsl:text>
          <xsl:element name="name">encodings</xsl:element>
          <xsl:element name="version">1.0.6</xsl:element>
          <xsl:if test="document($installed-packages)//package[name='encodings']">
            <xsl:element name="inst-version">
              <xsl:value-of
                select="document($installed-packages
                                )//package[name='encodings']/version"/>
            </xsl:element>
          </xsl:if>
<!-- Dependencies -->
          <xsl:element name="dependency">
            <xsl:attribute name="status">required</xsl:attribute>
            <xsl:attribute name="build">before</xsl:attribute>
            <xsl:attribute name="name">font-util</xsl:attribute>
            <xsl:attribute name="type">ref</xsl:attribute>
          </xsl:element>
<!-- End dependencies -->
        </module>
        <module><xsl:text>&#xA;          </xsl:text>
          <xsl:element name="name">font-adobe-utopia-type1</xsl:element>
          <xsl:element name="version">1.0.4</xsl:element>
          <xsl:if test="document($installed-packages)//package[name='font-adobe-utopia-type1']">
            <xsl:element name="inst-version">
              <xsl:value-of
                select="document($installed-packages
                                )//package[name='font-adobe-utopia-type1']/version"/>
            </xsl:element>
          </xsl:if>
<!-- Dependencies -->
          <xsl:element name="dependency">
            <xsl:attribute name="status">required</xsl:attribute>
            <xsl:attribute name="build">before</xsl:attribute>
            <xsl:attribute name="name">font-alias</xsl:attribute>
            <xsl:attribute name="type">ref</xsl:attribute>
          </xsl:element>
<!-- End dependencies -->
        </module>
        <module><xsl:text>&#xA;          </xsl:text>
          <xsl:element name="name">font-alias</xsl:element>
          <xsl:element name="version">1.0.4</xsl:element>
          <xsl:if test="document($installed-packages)//package[name='font-alias']">
            <xsl:element name="inst-version">
              <xsl:value-of
                select="document($installed-packages
                                )//package[name='font-alias']/version"/>
            </xsl:element>
          </xsl:if>
<!-- Dependencies -->
          <xsl:element name="dependency">
            <xsl:attribute name="status">required</xsl:attribute>
            <xsl:attribute name="build">before</xsl:attribute>
            <xsl:attribute name="name">encodings</xsl:attribute>
            <xsl:attribute name="type">ref</xsl:attribute>
          </xsl:element>
<!-- End dependencies -->
        </module>
        <module><xsl:text>&#xA;          </xsl:text>
          <xsl:element name="name">font-bh-ttf</xsl:element>
          <xsl:element name="version">1.0.3</xsl:element>
          <xsl:if test="document($installed-packages)//package[name='font-bh-ttf']">
            <xsl:element name="inst-version">
              <xsl:value-of
                select="document($installed-packages
                                )//package[name='font-bh-ttf']/version"/>
            </xsl:element>
          </xsl:if>
<!-- Dependencies -->
          <xsl:element name="dependency">
            <xsl:attribute name="status">required</xsl:attribute>
            <xsl:attribute name="build">before</xsl:attribute>
            <xsl:attribute name="name">font-adobe-utopia-type1</xsl:attribute>
            <xsl:attribute name="type">ref</xsl:attribute>
          </xsl:element>
<!-- End dependencies -->
        </module>
        <module><xsl:text>&#xA;          </xsl:text>
          <xsl:element name="name">font-bh-type1</xsl:element>
          <xsl:element name="version">1.0.3</xsl:element>
          <xsl:if test="document($installed-packages)//package[name='font-bh-type1']">
            <xsl:element name="inst-version">
              <xsl:value-of
                select="document($installed-packages
                                )//package[name='font-bh-type1']/version"/>
            </xsl:element>
          </xsl:if>
<!-- Dependencies -->
          <xsl:element name="dependency">
            <xsl:attribute name="status">required</xsl:attribute>
            <xsl:attribute name="build">before</xsl:attribute>
            <xsl:attribute name="name">font-bh-ttf</xsl:attribute>
            <xsl:attribute name="type">ref</xsl:attribute>
          </xsl:element>
<!-- End dependencies -->
        </module>
        <module><xsl:text>&#xA;          </xsl:text>
          <xsl:element name="name">font-ibm-type1</xsl:element>
          <xsl:element name="version">1.0.3</xsl:element>
          <xsl:if test="document($installed-packages)//package[name='font-ibm-type1']">
            <xsl:element name="inst-version">
              <xsl:value-of
                select="document($installed-packages
                                )//package[name='font-ibm-type1']/version"/>
            </xsl:element>
          </xsl:if>
<!-- Dependencies -->
          <xsl:element name="dependency">
            <xsl:attribute name="status">required</xsl:attribute>
            <xsl:attribute name="build">before</xsl:attribute>
            <xsl:attribute name="name">font-bh-type1</xsl:attribute>
            <xsl:attribute name="type">ref</xsl:attribute>
          </xsl:element>
<!-- End dependencies -->
        </module>
        <module><xsl:text>&#xA;          </xsl:text>
          <xsl:element name="name">font-misc-ethiopic</xsl:element>
          <xsl:element name="version">1.0.4</xsl:element>
          <xsl:if test="document($installed-packages)//package[name='font-misc-ethiopic']">
            <xsl:element name="inst-version">
              <xsl:value-of
                select="document($installed-packages
                                )//package[name='font-misc-ethiopic']/version"/>
            </xsl:element>
          </xsl:if>
<!-- Dependencies -->
          <xsl:element name="dependency">
            <xsl:attribute name="status">required</xsl:attribute>
            <xsl:attribute name="build">before</xsl:attribute>
            <xsl:attribute name="name">font-ibm-type1</xsl:attribute>
            <xsl:attribute name="type">ref</xsl:attribute>
          </xsl:element>
<!-- End dependencies -->
        </module>
        <module><xsl:text>&#xA;          </xsl:text>
          <xsl:element name="name">font-util</xsl:element>
          <xsl:element name="version">1.3.3</xsl:element>
          <xsl:if test="document($installed-packages)//package[name='font-util']">
            <xsl:element name="inst-version">
              <xsl:value-of
                select="document($installed-packages
                                )//package[name='font-util']/version"/>
            </xsl:element>
          </xsl:if>
<!-- Dependencies -->
          <xsl:apply-templates select=".//para[@role='required' or
                                               @role='recommended' or
                                               @role='optional']"
                               mode="dependency"/>
<!-- End dependencies -->
        </module>
        <module><xsl:text>&#xA;          </xsl:text>
          <xsl:element name="name">font-xfree86-type1</xsl:element>
          <xsl:element name="version">1.0.4</xsl:element>
          <xsl:if test="document($installed-packages)//package[name='font-xfree86-type1']">
            <xsl:element name="inst-version">
              <xsl:value-of
                select="document($installed-packages
                                )//package[name='font-xfree86-type1']/version"/>
            </xsl:element>
          </xsl:if>
<!-- Dependencies -->
          <xsl:element name="dependency">
            <xsl:attribute name="status">required</xsl:attribute>
            <xsl:attribute name="build">before</xsl:attribute>
            <xsl:attribute name="name">font-misc-ethiopic</xsl:attribute>
            <xsl:attribute name="type">ref</xsl:attribute>
          </xsl:element>
<!-- End dependencies -->
        </module>
     </package>
   </xsl:when>
    <xsl:when test="@id='xorg7-legacy'">
      <xsl:text>      </xsl:text>
      <package><xsl:text>&#xA;        </xsl:text>
        <xsl:element name="name">xorg7-legacy</xsl:element>
        <xsl:text>&#xA;        </xsl:text>
        <module><xsl:text>&#xA;          </xsl:text>
          <xsl:element name="name">bdftopcf</xsl:element>
          <xsl:element name="version">1.1</xsl:element>
          <xsl:if test="document($installed-packages)//package[name='bdftopcf']">
            <xsl:element name="inst-version">
              <xsl:value-of
                select="document($installed-packages
                                )//package[name='bdftopcf']/version"/>
            </xsl:element>
          </xsl:if>
<!-- Dependencies -->
          <xsl:apply-templates select=".//para[@role='required' or
                                               @role='recommended' or
                                               @role='optional']"
                               mode="dependency"/>
<!-- End dependencies -->
        </module>
        <module><xsl:text>&#xA;          </xsl:text>
          <xsl:element name="name">font-adobe-100dpi</xsl:element>
          <xsl:element name="version">1.0.3</xsl:element>
          <xsl:if test="document($installed-packages)//package[name='font-adobe-100dpi']">
            <xsl:element name="inst-version">
              <xsl:value-of
                select="document($installed-packages
                                )//package[name='font-adobe-100dpi']/version"/>
            </xsl:element>
          </xsl:if>
<!-- Dependencies -->
          <xsl:element name="dependency">
            <xsl:attribute name="status">required</xsl:attribute>
            <xsl:attribute name="build">before</xsl:attribute>
            <xsl:attribute name="name">bdftopcf</xsl:attribute>
            <xsl:attribute name="type">ref</xsl:attribute>
          </xsl:element>
<!-- End dependencies -->
        </module>
        <module><xsl:text>&#xA;          </xsl:text>
          <xsl:element name="name">font-adobe-75dpi</xsl:element>
          <xsl:element name="version">1.0.3</xsl:element>
          <xsl:if test="document($installed-packages)//package[name='font-adobe-75dpi']">
            <xsl:element name="inst-version">
              <xsl:value-of
                select="document($installed-packages
                                )//package[name='font-adobe-75dpi']/version"/>
            </xsl:element>
          </xsl:if>
<!-- Dependencies -->
          <xsl:element name="dependency">
            <xsl:attribute name="status">required</xsl:attribute>
            <xsl:attribute name="build">before</xsl:attribute>
            <xsl:attribute name="name">font-adobe-100dpi</xsl:attribute>
            <xsl:attribute name="type">ref</xsl:attribute>
          </xsl:element>
<!-- End dependencies -->
        </module>
        <module><xsl:text>&#xA;          </xsl:text>
          <xsl:element name="name">font-jis-misc</xsl:element>
          <xsl:element name="version">1.0.3</xsl:element>
          <xsl:if test="document($installed-packages)//package[name='font-jis-misc']">
            <xsl:element name="inst-version">
              <xsl:value-of
                select="document($installed-packages
                                )//package[name='font-jis-misc']/version"/>
            </xsl:element>
          </xsl:if>
<!-- Dependencies -->
          <xsl:element name="dependency">
            <xsl:attribute name="status">required</xsl:attribute>
            <xsl:attribute name="build">before</xsl:attribute>
            <xsl:attribute name="name">font-adobe-75dpi</xsl:attribute>
            <xsl:attribute name="type">ref</xsl:attribute>
          </xsl:element>
<!-- End dependencies -->
        </module>
        <module><xsl:text>&#xA;          </xsl:text>
          <xsl:element name="name">font-daewoo-misc</xsl:element>
          <xsl:element name="version">1.0.3</xsl:element>
          <xsl:if test="document($installed-packages)//package[name='font-daewoo-misc']">
            <xsl:element name="inst-version">
              <xsl:value-of
                select="document($installed-packages
                                )//package[name='font-daewoo-misc']/version"/>
            </xsl:element>
          </xsl:if>
<!-- Dependencies -->
          <xsl:element name="dependency">
            <xsl:attribute name="status">required</xsl:attribute>
            <xsl:attribute name="build">before</xsl:attribute>
            <xsl:attribute name="name">font-jis-misc</xsl:attribute>
            <xsl:attribute name="type">ref</xsl:attribute>
          </xsl:element>
<!-- End dependencies -->
        </module>
        <module><xsl:text>&#xA;          </xsl:text>
          <xsl:element name="name">font-isas-misc</xsl:element>
          <xsl:element name="version">1.0.3</xsl:element>
          <xsl:if test="document($installed-packages)//package[name='font-isas-misc']">
            <xsl:element name="inst-version">
              <xsl:value-of
                select="document($installed-packages
                                )//package[name='font-isas-misc']/version"/>
            </xsl:element>
          </xsl:if>
<!-- Dependencies -->
          <xsl:element name="dependency">
            <xsl:attribute name="status">required</xsl:attribute>
            <xsl:attribute name="build">before</xsl:attribute>
            <xsl:attribute name="name">font-daewoo-misc</xsl:attribute>
            <xsl:attribute name="type">ref</xsl:attribute>
          </xsl:element>
<!-- End dependencies -->
        </module>
        <module><xsl:text>&#xA;          </xsl:text>
          <xsl:element name="name">font-misc-misc</xsl:element>
          <xsl:element name="version">1.1.2</xsl:element>
          <xsl:if test="document($installed-packages)//package[name='font-misc-misc']">
            <xsl:element name="inst-version">
              <xsl:value-of
                select="document($installed-packages
                                )//package[name='font-misc-misc']/version"/>
            </xsl:element>
          </xsl:if>
<!-- Dependencies -->
          <xsl:element name="dependency">
            <xsl:attribute name="status">required</xsl:attribute>
            <xsl:attribute name="build">before</xsl:attribute>
            <xsl:attribute name="name">font-isas-misc</xsl:attribute>
            <xsl:attribute name="type">ref</xsl:attribute>
          </xsl:element>
<!-- End dependencies -->
        </module>
     </package>
   </xsl:when>
    <xsl:when test="@id='xorg7-lib'">
      <xsl:text>      </xsl:text>
      <package><xsl:text>&#xA;        </xsl:text>
        <xsl:element name="name">xorg7-lib</xsl:element>
        <xsl:text>&#xA;        </xsl:text>
        <module><xsl:text>&#xA;          </xsl:text>
          <xsl:element name="name">xtrans</xsl:element>
          <xsl:element name="version">1.4.0</xsl:element>
          <xsl:if test="document($installed-packages)//package[name='xtrans']">
            <xsl:element name="inst-version">
              <xsl:value-of
                select="document($installed-packages
                                )//package[name='xtrans']/version"/>
            </xsl:element>
          </xsl:if>
<!-- Dependencies -->
          <xsl:apply-templates select=".//para[@role='required' or
                                               @role='recommended' or
                                               @role='optional']"
                               mode="dependency"/>
<!-- End dependencies -->
        </module>
        <module><xsl:text>&#xA;          </xsl:text>
          <xsl:element name="name">libX11</xsl:element>
          <xsl:element name="version">1.8.1</xsl:element>
          <xsl:if test="document($installed-packages)//package[name='libX11']">
            <xsl:element name="inst-version">
              <xsl:value-of
                select="document($installed-packages
                                )//package[name='libX11']/version"/>
            </xsl:element>
          </xsl:if>
<!-- Dependencies -->
          <xsl:element name="dependency">
            <xsl:attribute name="status">required</xsl:attribute>
            <xsl:attribute name="build">before</xsl:attribute>
            <xsl:attribute name="name">xtrans</xsl:attribute>
            <xsl:attribute name="type">ref</xsl:attribute>
          </xsl:element>
<!-- End dependencies -->
        </module>
        <module><xsl:text>&#xA;          </xsl:text>
          <xsl:element name="name">libXext</xsl:element>
          <xsl:element name="version">1.3.4</xsl:element>
          <xsl:if test="document($installed-packages)//package[name='libXext']">
            <xsl:element name="inst-version">
              <xsl:value-of
                select="document($installed-packages
                                )//package[name='libXext']/version"/>
            </xsl:element>
          </xsl:if>
<!-- Dependencies -->
          <xsl:element name="dependency">
            <xsl:attribute name="status">required</xsl:attribute>
            <xsl:attribute name="build">before</xsl:attribute>
            <xsl:attribute name="name">libX11</xsl:attribute>
            <xsl:attribute name="type">ref</xsl:attribute>
          </xsl:element>
<!-- End dependencies -->
        </module>
        <module><xsl:text>&#xA;          </xsl:text>
          <xsl:element name="name">libFS</xsl:element>
          <xsl:element name="version">1.0.8</xsl:element>
          <xsl:if test="document($installed-packages)//package[name='libFS']">
            <xsl:element name="inst-version">
              <xsl:value-of
                select="document($installed-packages
                                )//package[name='libFS']/version"/>
            </xsl:element>
          </xsl:if>
<!-- Dependencies -->
          <xsl:element name="dependency">
            <xsl:attribute name="status">required</xsl:attribute>
            <xsl:attribute name="build">before</xsl:attribute>
            <xsl:attribute name="name">libXext</xsl:attribute>
            <xsl:attribute name="type">ref</xsl:attribute>
          </xsl:element>
<!-- End dependencies -->
        </module>
        <module><xsl:text>&#xA;          </xsl:text>
          <xsl:element name="name">libICE</xsl:element>
          <xsl:element name="version">1.0.10</xsl:element>
          <xsl:if test="document($installed-packages)//package[name='libICE']">
            <xsl:element name="inst-version">
              <xsl:value-of
                select="document($installed-packages
                                )//package[name='libICE']/version"/>
            </xsl:element>
          </xsl:if>
<!-- Dependencies -->
          <xsl:element name="dependency">
            <xsl:attribute name="status">required</xsl:attribute>
            <xsl:attribute name="build">before</xsl:attribute>
            <xsl:attribute name="name">libFS</xsl:attribute>
            <xsl:attribute name="type">ref</xsl:attribute>
          </xsl:element>
<!-- End dependencies -->
        </module>
        <module><xsl:text>&#xA;          </xsl:text>
          <xsl:element name="name">libSM</xsl:element>
          <xsl:element name="version">1.2.3</xsl:element>
          <xsl:if test="document($installed-packages)//package[name='libSM']">
            <xsl:element name="inst-version">
              <xsl:value-of
                select="document($installed-packages
                                )//package[name='libSM']/version"/>
            </xsl:element>
          </xsl:if>
<!-- Dependencies -->
          <xsl:element name="dependency">
            <xsl:attribute name="status">required</xsl:attribute>
            <xsl:attribute name="build">before</xsl:attribute>
            <xsl:attribute name="name">libICE</xsl:attribute>
            <xsl:attribute name="type">ref</xsl:attribute>
          </xsl:element>
<!-- End dependencies -->
        </module>
        <module><xsl:text>&#xA;          </xsl:text>
          <xsl:element name="name">libXScrnSaver</xsl:element>
          <xsl:element name="version">1.2.3</xsl:element>
          <xsl:if test="document($installed-packages)//package[name='libXScrnSaver']">
            <xsl:element name="inst-version">
              <xsl:value-of
                select="document($installed-packages
                                )//package[name='libXScrnSaver']/version"/>
            </xsl:element>
          </xsl:if>
<!-- Dependencies -->
          <xsl:element name="dependency">
            <xsl:attribute name="status">required</xsl:attribute>
            <xsl:attribute name="build">before</xsl:attribute>
            <xsl:attribute name="name">libSM</xsl:attribute>
            <xsl:attribute name="type">ref</xsl:attribute>
          </xsl:element>
<!-- End dependencies -->
        </module>
        <module><xsl:text>&#xA;          </xsl:text>
          <xsl:element name="name">libXt</xsl:element>
          <xsl:element name="version">1.2.1</xsl:element>
          <xsl:if test="document($installed-packages)//package[name='libXt']">
            <xsl:element name="inst-version">
              <xsl:value-of
                select="document($installed-packages
                                )//package[name='libXt']/version"/>
            </xsl:element>
          </xsl:if>
<!-- Dependencies -->
          <xsl:element name="dependency">
            <xsl:attribute name="status">required</xsl:attribute>
            <xsl:attribute name="build">before</xsl:attribute>
            <xsl:attribute name="name">libXScrnSaver</xsl:attribute>
            <xsl:attribute name="type">ref</xsl:attribute>
          </xsl:element>
<!-- End dependencies -->
        </module>
        <module><xsl:text>&#xA;          </xsl:text>
          <xsl:element name="name">libXmu</xsl:element>
          <xsl:element name="version">1.1.3</xsl:element>
          <xsl:if test="document($installed-packages)//package[name='libXmu']">
            <xsl:element name="inst-version">
              <xsl:value-of
                select="document($installed-packages
                                )//package[name='libXmu']/version"/>
            </xsl:element>
          </xsl:if>
<!-- Dependencies -->
          <xsl:element name="dependency">
            <xsl:attribute name="status">required</xsl:attribute>
            <xsl:attribute name="build">before</xsl:attribute>
            <xsl:attribute name="name">libXt</xsl:attribute>
            <xsl:attribute name="type">ref</xsl:attribute>
          </xsl:element>
<!-- End dependencies -->
        </module>
        <module><xsl:text>&#xA;          </xsl:text>
          <xsl:element name="name">libXpm</xsl:element>
          <xsl:element name="version">3.5.13</xsl:element>
          <xsl:if test="document($installed-packages)//package[name='libXpm']">
            <xsl:element name="inst-version">
              <xsl:value-of
                select="document($installed-packages
                                )//package[name='libXpm']/version"/>
            </xsl:element>
          </xsl:if>
<!-- Dependencies -->
          <xsl:element name="dependency">
            <xsl:attribute name="status">required</xsl:attribute>
            <xsl:attribute name="build">before</xsl:attribute>
            <xsl:attribute name="name">libXmu</xsl:attribute>
            <xsl:attribute name="type">ref</xsl:attribute>
          </xsl:element>
<!-- End dependencies -->
        </module>
        <module><xsl:text>&#xA;          </xsl:text>
          <xsl:element name="name">libXaw</xsl:element>
          <xsl:element name="version">1.0.14</xsl:element>
          <xsl:if test="document($installed-packages)//package[name='libXaw']">
            <xsl:element name="inst-version">
              <xsl:value-of
                select="document($installed-packages
                                )//package[name='libXaw']/version"/>
            </xsl:element>
          </xsl:if>
<!-- Dependencies -->
          <xsl:element name="dependency">
            <xsl:attribute name="status">required</xsl:attribute>
            <xsl:attribute name="build">before</xsl:attribute>
            <xsl:attribute name="name">libXpm</xsl:attribute>
            <xsl:attribute name="type">ref</xsl:attribute>
          </xsl:element>
<!-- End dependencies -->
        </module>
        <module><xsl:text>&#xA;          </xsl:text>
          <xsl:element name="name">libXfixes</xsl:element>
          <xsl:element name="version">6.0.0</xsl:element>
          <xsl:if test="document($installed-packages)//package[name='libXfixes']">
            <xsl:element name="inst-version">
              <xsl:value-of
                select="document($installed-packages
                                )//package[name='libXfixes']/version"/>
            </xsl:element>
          </xsl:if>
<!-- Dependencies -->
          <xsl:element name="dependency">
            <xsl:attribute name="status">required</xsl:attribute>
            <xsl:attribute name="build">before</xsl:attribute>
            <xsl:attribute name="name">libXaw</xsl:attribute>
            <xsl:attribute name="type">ref</xsl:attribute>
          </xsl:element>
<!-- End dependencies -->
        </module>
        <module><xsl:text>&#xA;          </xsl:text>
          <xsl:element name="name">libXcomposite</xsl:element>
          <xsl:element name="version">0.4.5</xsl:element>
          <xsl:if test="document($installed-packages)//package[name='libXcomposite']">
            <xsl:element name="inst-version">
              <xsl:value-of
                select="document($installed-packages
                                )//package[name='libXcomposite']/version"/>
            </xsl:element>
          </xsl:if>
<!-- Dependencies -->
          <xsl:element name="dependency">
            <xsl:attribute name="status">required</xsl:attribute>
            <xsl:attribute name="build">before</xsl:attribute>
            <xsl:attribute name="name">libXfixes</xsl:attribute>
            <xsl:attribute name="type">ref</xsl:attribute>
          </xsl:element>
<!-- End dependencies -->
        </module>
        <module><xsl:text>&#xA;          </xsl:text>
          <xsl:element name="name">libXrender</xsl:element>
          <xsl:element name="version">0.9.10</xsl:element>
          <xsl:if test="document($installed-packages)//package[name='libXrender']">
            <xsl:element name="inst-version">
              <xsl:value-of
                select="document($installed-packages
                                )//package[name='libXrender']/version"/>
            </xsl:element>
          </xsl:if>
<!-- Dependencies -->
          <xsl:element name="dependency">
            <xsl:attribute name="status">required</xsl:attribute>
            <xsl:attribute name="build">before</xsl:attribute>
            <xsl:attribute name="name">libXcomposite</xsl:attribute>
            <xsl:attribute name="type">ref</xsl:attribute>
          </xsl:element>
<!-- End dependencies -->
        </module>
        <module><xsl:text>&#xA;          </xsl:text>
          <xsl:element name="name">libXcursor</xsl:element>
          <xsl:element name="version">1.2.1</xsl:element>
          <xsl:if test="document($installed-packages)//package[name='libXcursor']">
            <xsl:element name="inst-version">
              <xsl:value-of
                select="document($installed-packages
                                )//package[name='libXcursor']/version"/>
            </xsl:element>
          </xsl:if>
<!-- Dependencies -->
          <xsl:element name="dependency">
            <xsl:attribute name="status">required</xsl:attribute>
            <xsl:attribute name="build">before</xsl:attribute>
            <xsl:attribute name="name">libXrender</xsl:attribute>
            <xsl:attribute name="type">ref</xsl:attribute>
          </xsl:element>
<!-- End dependencies -->
        </module>
        <module><xsl:text>&#xA;          </xsl:text>
          <xsl:element name="name">libXdamage</xsl:element>
          <xsl:element name="version">1.1.5</xsl:element>
          <xsl:if test="document($installed-packages)//package[name='libXdamage']">
            <xsl:element name="inst-version">
              <xsl:value-of
                select="document($installed-packages
                                )//package[name='libXdamage']/version"/>
            </xsl:element>
          </xsl:if>
<!-- Dependencies -->
          <xsl:element name="dependency">
            <xsl:attribute name="status">required</xsl:attribute>
            <xsl:attribute name="build">before</xsl:attribute>
            <xsl:attribute name="name">libXcursor</xsl:attribute>
            <xsl:attribute name="type">ref</xsl:attribute>
          </xsl:element>
<!-- End dependencies -->
        </module>
        <module><xsl:text>&#xA;          </xsl:text>
          <xsl:element name="name">libfontenc</xsl:element>
          <xsl:element name="version">1.1.4</xsl:element>
          <xsl:if test="document($installed-packages)//package[name='libfontenc']">
            <xsl:element name="inst-version">
              <xsl:value-of
                select="document($installed-packages
                                )//package[name='libfontenc']/version"/>
            </xsl:element>
          </xsl:if>
<!-- Dependencies -->
          <xsl:element name="dependency">
            <xsl:attribute name="status">required</xsl:attribute>
            <xsl:attribute name="build">before</xsl:attribute>
            <xsl:attribute name="name">libXdamage</xsl:attribute>
            <xsl:attribute name="type">ref</xsl:attribute>
          </xsl:element>
<!-- End dependencies -->
        </module>
        <module><xsl:text>&#xA;          </xsl:text>
          <xsl:element name="name">libXfont2</xsl:element>
          <xsl:element name="version">2.0.5</xsl:element>
          <xsl:if test="document($installed-packages)//package[name='libXfont2']">
            <xsl:element name="inst-version">
              <xsl:value-of
                select="document($installed-packages
                                )//package[name='libXfont2']/version"/>
            </xsl:element>
          </xsl:if>
<!-- Dependencies -->
          <xsl:element name="dependency">
            <xsl:attribute name="status">required</xsl:attribute>
            <xsl:attribute name="build">before</xsl:attribute>
            <xsl:attribute name="name">libfontenc</xsl:attribute>
            <xsl:attribute name="type">ref</xsl:attribute>
          </xsl:element>
<!-- End dependencies -->
        </module>
        <module><xsl:text>&#xA;          </xsl:text>
          <xsl:element name="name">libXft</xsl:element>
          <xsl:element name="version">2.3.4</xsl:element>
          <xsl:if test="document($installed-packages)//package[name='libXft']">
            <xsl:element name="inst-version">
              <xsl:value-of
                select="document($installed-packages
                                )//package[name='libXft']/version"/>
            </xsl:element>
          </xsl:if>
<!-- Dependencies -->
          <xsl:element name="dependency">
            <xsl:attribute name="status">required</xsl:attribute>
            <xsl:attribute name="build">before</xsl:attribute>
            <xsl:attribute name="name">libXfont2</xsl:attribute>
            <xsl:attribute name="type">ref</xsl:attribute>
          </xsl:element>
<!-- End dependencies -->
        </module>
        <module><xsl:text>&#xA;          </xsl:text>
          <xsl:element name="name">libXi</xsl:element>
          <xsl:element name="version">1.8</xsl:element>
          <xsl:if test="document($installed-packages)//package[name='libXi']">
            <xsl:element name="inst-version">
              <xsl:value-of
                select="document($installed-packages
                                )//package[name='libXi']/version"/>
            </xsl:element>
          </xsl:if>
<!-- Dependencies -->
          <xsl:element name="dependency">
            <xsl:attribute name="status">required</xsl:attribute>
            <xsl:attribute name="build">before</xsl:attribute>
            <xsl:attribute name="name">libXft</xsl:attribute>
            <xsl:attribute name="type">ref</xsl:attribute>
          </xsl:element>
<!-- End dependencies -->
        </module>
        <module><xsl:text>&#xA;          </xsl:text>
          <xsl:element name="name">libXinerama</xsl:element>
          <xsl:element name="version">1.1.4</xsl:element>
          <xsl:if test="document($installed-packages)//package[name='libXinerama']">
            <xsl:element name="inst-version">
              <xsl:value-of
                select="document($installed-packages
                                )//package[name='libXinerama']/version"/>
            </xsl:element>
          </xsl:if>
<!-- Dependencies -->
          <xsl:element name="dependency">
            <xsl:attribute name="status">required</xsl:attribute>
            <xsl:attribute name="build">before</xsl:attribute>
            <xsl:attribute name="name">libXi</xsl:attribute>
            <xsl:attribute name="type">ref</xsl:attribute>
          </xsl:element>
<!-- End dependencies -->
        </module>
        <module><xsl:text>&#xA;          </xsl:text>
          <xsl:element name="name">libXrandr</xsl:element>
          <xsl:element name="version">1.5.2</xsl:element>
          <xsl:if test="document($installed-packages)//package[name='libXrandr']">
            <xsl:element name="inst-version">
              <xsl:value-of
                select="document($installed-packages
                                )//package[name='libXrandr']/version"/>
            </xsl:element>
          </xsl:if>
<!-- Dependencies -->
          <xsl:element name="dependency">
            <xsl:attribute name="status">required</xsl:attribute>
            <xsl:attribute name="build">before</xsl:attribute>
            <xsl:attribute name="name">libXinerama</xsl:attribute>
            <xsl:attribute name="type">ref</xsl:attribute>
          </xsl:element>
<!-- End dependencies -->
        </module>
        <module><xsl:text>&#xA;          </xsl:text>
          <xsl:element name="name">libXres</xsl:element>
          <xsl:element name="version">1.2.1</xsl:element>
          <xsl:if test="document($installed-packages)//package[name='libXres']">
            <xsl:element name="inst-version">
              <xsl:value-of
                select="document($installed-packages
                                )//package[name='libXres']/version"/>
            </xsl:element>
          </xsl:if>
<!-- Dependencies -->
          <xsl:element name="dependency">
            <xsl:attribute name="status">required</xsl:attribute>
            <xsl:attribute name="build">before</xsl:attribute>
            <xsl:attribute name="name">libXrandr</xsl:attribute>
            <xsl:attribute name="type">ref</xsl:attribute>
          </xsl:element>
<!-- End dependencies -->
        </module>
        <module><xsl:text>&#xA;          </xsl:text>
          <xsl:element name="name">libXtst</xsl:element>
          <xsl:element name="version">1.2.3</xsl:element>
          <xsl:if test="document($installed-packages)//package[name='libXtst']">
            <xsl:element name="inst-version">
              <xsl:value-of
                select="document($installed-packages
                                )//package[name='libXtst']/version"/>
            </xsl:element>
          </xsl:if>
<!-- Dependencies -->
          <xsl:element name="dependency">
            <xsl:attribute name="status">required</xsl:attribute>
            <xsl:attribute name="build">before</xsl:attribute>
            <xsl:attribute name="name">libXres</xsl:attribute>
            <xsl:attribute name="type">ref</xsl:attribute>
          </xsl:element>
<!-- End dependencies -->
        </module>
        <module><xsl:text>&#xA;          </xsl:text>
          <xsl:element name="name">libXv</xsl:element>
          <xsl:element name="version">1.0.11</xsl:element>
          <xsl:if test="document($installed-packages)//package[name='libXv']">
            <xsl:element name="inst-version">
              <xsl:value-of
                select="document($installed-packages
                                )//package[name='libXv']/version"/>
            </xsl:element>
          </xsl:if>
<!-- Dependencies -->
          <xsl:element name="dependency">
            <xsl:attribute name="status">required</xsl:attribute>
            <xsl:attribute name="build">before</xsl:attribute>
            <xsl:attribute name="name">libXtst</xsl:attribute>
            <xsl:attribute name="type">ref</xsl:attribute>
          </xsl:element>
<!-- End dependencies -->
        </module>
        <module><xsl:text>&#xA;          </xsl:text>
          <xsl:element name="name">libXvMC</xsl:element>
          <xsl:element name="version">1.0.13</xsl:element>
          <xsl:if test="document($installed-packages)//package[name='libXvMC']">
            <xsl:element name="inst-version">
              <xsl:value-of
                select="document($installed-packages
                                )//package[name='libXvMC']/version"/>
            </xsl:element>
          </xsl:if>
<!-- Dependencies -->
          <xsl:element name="dependency">
            <xsl:attribute name="status">required</xsl:attribute>
            <xsl:attribute name="build">before</xsl:attribute>
            <xsl:attribute name="name">libXv</xsl:attribute>
            <xsl:attribute name="type">ref</xsl:attribute>
          </xsl:element>
<!-- End dependencies -->
        </module>
        <module><xsl:text>&#xA;          </xsl:text>
          <xsl:element name="name">libXxf86dga</xsl:element>
          <xsl:element name="version">1.1.5</xsl:element>
          <xsl:if test="document($installed-packages)//package[name='libXxf86dga']">
            <xsl:element name="inst-version">
              <xsl:value-of
                select="document($installed-packages
                                )//package[name='libXxf86dga']/version"/>
            </xsl:element>
          </xsl:if>
<!-- Dependencies -->
          <xsl:element name="dependency">
            <xsl:attribute name="status">required</xsl:attribute>
            <xsl:attribute name="build">before</xsl:attribute>
            <xsl:attribute name="name">libXvMC</xsl:attribute>
            <xsl:attribute name="type">ref</xsl:attribute>
          </xsl:element>
<!-- End dependencies -->
        </module>
        <module><xsl:text>&#xA;          </xsl:text>
          <xsl:element name="name">libXxf86vm</xsl:element>
          <xsl:element name="version">1.1.4</xsl:element>
          <xsl:if test="document($installed-packages)//package[name='libXxf86vm']">
            <xsl:element name="inst-version">
              <xsl:value-of
                select="document($installed-packages
                                )//package[name='libXxf86vm']/version"/>
            </xsl:element>
          </xsl:if>
<!-- Dependencies -->
          <xsl:element name="dependency">
            <xsl:attribute name="status">required</xsl:attribute>
            <xsl:attribute name="build">before</xsl:attribute>
            <xsl:attribute name="name">libXxf86dga</xsl:attribute>
            <xsl:attribute name="type">ref</xsl:attribute>
          </xsl:element>
<!-- End dependencies -->
        </module>
        <module><xsl:text>&#xA;          </xsl:text>
          <xsl:element name="name">libdmx</xsl:element>
          <xsl:element name="version">1.1.4</xsl:element>
          <xsl:if test="document($installed-packages)//package[name='libdmx']">
            <xsl:element name="inst-version">
              <xsl:value-of
                select="document($installed-packages
                                )//package[name='libdmx']/version"/>
            </xsl:element>
          </xsl:if>
<!-- Dependencies -->
          <xsl:element name="dependency">
            <xsl:attribute name="status">required</xsl:attribute>
            <xsl:attribute name="build">before</xsl:attribute>
            <xsl:attribute name="name">libXxf86vm</xsl:attribute>
            <xsl:attribute name="type">ref</xsl:attribute>
          </xsl:element>
<!-- End dependencies -->
        </module>
        <module><xsl:text>&#xA;          </xsl:text>
          <xsl:element name="name">libpciaccess</xsl:element>
          <xsl:element name="version">0.16</xsl:element>
          <xsl:if test="document($installed-packages)//package[name='libpciaccess']">
            <xsl:element name="inst-version">
              <xsl:value-of
                select="document($installed-packages
                                )//package[name='libpciaccess']/version"/>
            </xsl:element>
          </xsl:if>
<!-- Dependencies -->
          <xsl:element name="dependency">
            <xsl:attribute name="status">required</xsl:attribute>
            <xsl:attribute name="build">before</xsl:attribute>
            <xsl:attribute name="name">libdmx</xsl:attribute>
            <xsl:attribute name="type">ref</xsl:attribute>
          </xsl:element>
<!-- End dependencies -->
        </module>
        <module><xsl:text>&#xA;          </xsl:text>
          <xsl:element name="name">libxkbfile</xsl:element>
          <xsl:element name="version">1.1.0</xsl:element>
          <xsl:if test="document($installed-packages)//package[name='libxkbfile']">
            <xsl:element name="inst-version">
              <xsl:value-of
                select="document($installed-packages
                                )//package[name='libxkbfile']/version"/>
            </xsl:element>
          </xsl:if>
<!-- Dependencies -->
          <xsl:element name="dependency">
            <xsl:attribute name="status">required</xsl:attribute>
            <xsl:attribute name="build">before</xsl:attribute>
            <xsl:attribute name="name">libpciaccess</xsl:attribute>
            <xsl:attribute name="type">ref</xsl:attribute>
          </xsl:element>
<!-- End dependencies -->
        </module>
        <module><xsl:text>&#xA;          </xsl:text>
          <xsl:element name="name">libxshmfence</xsl:element>
          <xsl:element name="version">1.3</xsl:element>
          <xsl:if test="document($installed-packages)//package[name='libxshmfence']">
            <xsl:element name="inst-version">
              <xsl:value-of
                select="document($installed-packages
                                )//package[name='libxshmfence']/version"/>
            </xsl:element>
          </xsl:if>
<!-- Dependencies -->
          <xsl:element name="dependency">
            <xsl:attribute name="status">required</xsl:attribute>
            <xsl:attribute name="build">before</xsl:attribute>
            <xsl:attribute name="name">libxkbfile</xsl:attribute>
            <xsl:attribute name="type">ref</xsl:attribute>
          </xsl:element>
<!-- End dependencies -->
        </module>
     </package>
   </xsl:when>
    <xsl:when test="@id='perl-test-mockmodule'">
<!-- if there is a sect1 ancestor, we have a module -->
      <xsl:choose>
        <xsl:when test="ancestor::sect1">
          <xsl:text>        </xsl:text>
          <module><xsl:text>&#xA;          </xsl:text>
            <xsl:element name="name">perl-test-mockmodule</xsl:element>
            <xsl:text>&#xA;          </xsl:text>
            <xsl:element name="version">v0.176.0</xsl:element>
            <xsl:if
                test="document($installed-packages)//package[name=current()/@id]">
              <xsl:text>&#xA;          </xsl:text>
              <xsl:element name="inst-version">
                <xsl:value-of
                  select="document($installed-packages
                                  )//package[name=current()/@id]/version"/>
              </xsl:element>
            </xsl:if>
<!-- Dependencies -->
            <xsl:apply-templates select=".//para[@role='required' or
                                                 @role='recommended' or
                                                 @role='optional']"
                                 mode="dependency"/>
<!-- End dependencies -->
            <xsl:text>&#xA;        </xsl:text>
          </module><xsl:text>&#xA;</xsl:text>
        </xsl:when>
        <xsl:otherwise>
          <xsl:text>      </xsl:text>
          <package><xsl:text>&#xA;        </xsl:text>
            <xsl:element name="name">perl-test-mockmodule</xsl:element>
            <xsl:text>&#xA;        </xsl:text>
            <xsl:element name="version">v0.176.0</xsl:element>
            <xsl:if
                test="document($installed-packages)//package[name=current()/@id]">
              <xsl:text>&#xA;        </xsl:text>
              <xsl:element name="inst-version">
                <xsl:value-of
                  select="document($installed-packages
                                  )//package[name=current()/@id]/version"/>
              </xsl:element>
            </xsl:if>
<!-- Dependencies -->
            <xsl:apply-templates select=".//para[@role='required' or
                                                 @role='recommended' or
                                                 @role='optional']"
                                 mode="dependency"/>
<!-- End dependencies -->
            <xsl:text>&#xA;      </xsl:text>
          </package><xsl:text>&#xA;</xsl:text>
        </xsl:otherwise>
      </xsl:choose>
    </xsl:when>
    <xsl:when test="@id='cdparanoia'">
<!-- if there is a sect1 ancestor, we have a module -->
      <xsl:choose>
        <xsl:when test="ancestor::sect1">
          <xsl:text>        </xsl:text>
          <module><xsl:text>&#xA;          </xsl:text>
            <xsl:element name="name">cdparanoia</xsl:element>
            <xsl:text>&#xA;          </xsl:text>
            <xsl:element name="version">III-10.2</xsl:element>
            <xsl:if
                test="document($installed-packages)//package[name=current()/@id]">
              <xsl:text>&#xA;          </xsl:text>
              <xsl:element name="inst-version">
                <xsl:value-of
                  select="document($installed-packages
                                  )//package[name=current()/@id]/version"/>
              </xsl:element>
            </xsl:if>
<!-- Dependencies -->
            <xsl:apply-templates select=".//para[@role='required' or
                                                 @role='recommended' or
                                                 @role='optional']"
                                 mode="dependency"/>
<!-- End dependencies -->
            <xsl:text>&#xA;        </xsl:text>
          </module><xsl:text>&#xA;</xsl:text>
        </xsl:when>
        <xsl:otherwise>
          <xsl:text>      </xsl:text>
          <package><xsl:text>&#xA;        </xsl:text>
            <xsl:element name="name">cdparanoia</xsl:element>
            <xsl:text>&#xA;        </xsl:text>
            <xsl:element name="version">III-10.2</xsl:element>
            <xsl:if
                test="document($installed-packages)//package[name=current()/@id]">
              <xsl:text>&#xA;        </xsl:text>
              <xsl:element name="inst-version">
                <xsl:value-of
                  select="document($installed-packages
                                  )//package[name=current()/@id]/version"/>
              </xsl:element>
            </xsl:if>
<!-- Dependencies -->
            <xsl:apply-templates select=".//para[@role='required' or
                                                 @role='recommended' or
                                                 @role='optional']"
                                 mode="dependency"/>
<!-- End dependencies -->
            <xsl:text>&#xA;      </xsl:text>
          </package><xsl:text>&#xA;</xsl:text>
        </xsl:otherwise>
      </xsl:choose>
    </xsl:when>
    <xsl:otherwise>
        <xsl:apply-templates
           select="self::node()[contains(translate(@xreflabel,
                                                  '123456789',
                                                  '000000000'),
                                         '-0')
                               ]"
           mode="normal"/>
    </xsl:otherwise>
  </xsl:choose>
</xsl:template>
  <xsl:template name="expand-deps">
    <xsl:param name="section"/>
    <xsl:param name="status"/>
    <xsl:param name="build"/>
    <xsl:choose>
      <xsl:when test="$section='xorg7-app'">
        <xsl:element name="dependency">
          <xsl:attribute name="status">
            <xsl:value-of select="$status"/>
          </xsl:attribute>
          <xsl:attribute name="build">
            <xsl:value-of select="$build"/>
          </xsl:attribute>
          <xsl:attribute name="name">iceauth</xsl:attribute>
          <xsl:attribute name="type">ref</xsl:attribute>
        </xsl:element>
        <xsl:element name="dependency">
          <xsl:attribute name="status">
            <xsl:value-of select="$status"/>
          </xsl:attribute>
          <xsl:attribute name="build">
            <xsl:value-of select="$build"/>
          </xsl:attribute>
          <xsl:attribute name="name">luit</xsl:attribute>
          <xsl:attribute name="type">ref</xsl:attribute>
        </xsl:element>
        <xsl:element name="dependency">
          <xsl:attribute name="status">
            <xsl:value-of select="$status"/>
          </xsl:attribute>
          <xsl:attribute name="build">
            <xsl:value-of select="$build"/>
          </xsl:attribute>
          <xsl:attribute name="name">mkfontscale</xsl:attribute>
          <xsl:attribute name="type">ref</xsl:attribute>
        </xsl:element>
        <xsl:element name="dependency">
          <xsl:attribute name="status">
            <xsl:value-of select="$status"/>
          </xsl:attribute>
          <xsl:attribute name="build">
            <xsl:value-of select="$build"/>
          </xsl:attribute>
          <xsl:attribute name="name">sessreg</xsl:attribute>
          <xsl:attribute name="type">ref</xsl:attribute>
        </xsl:element>
        <xsl:element name="dependency">
          <xsl:attribute name="status">
            <xsl:value-of select="$status"/>
          </xsl:attribute>
          <xsl:attribute name="build">
            <xsl:value-of select="$build"/>
          </xsl:attribute>
          <xsl:attribute name="name">setxkbmap</xsl:attribute>
          <xsl:attribute name="type">ref</xsl:attribute>
        </xsl:element>
        <xsl:element name="dependency">
          <xsl:attribute name="status">
            <xsl:value-of select="$status"/>
          </xsl:attribute>
          <xsl:attribute name="build">
            <xsl:value-of select="$build"/>
          </xsl:attribute>
          <xsl:attribute name="name">smproxy</xsl:attribute>
          <xsl:attribute name="type">ref</xsl:attribute>
        </xsl:element>
        <xsl:element name="dependency">
          <xsl:attribute name="status">
            <xsl:value-of select="$status"/>
          </xsl:attribute>
          <xsl:attribute name="build">
            <xsl:value-of select="$build"/>
          </xsl:attribute>
          <xsl:attribute name="name">x11perf</xsl:attribute>
          <xsl:attribute name="type">ref</xsl:attribute>
        </xsl:element>
        <xsl:element name="dependency">
          <xsl:attribute name="status">
            <xsl:value-of select="$status"/>
          </xsl:attribute>
          <xsl:attribute name="build">
            <xsl:value-of select="$build"/>
          </xsl:attribute>
          <xsl:attribute name="name">xauth</xsl:attribute>
          <xsl:attribute name="type">ref</xsl:attribute>
        </xsl:element>
        <xsl:element name="dependency">
          <xsl:attribute name="status">
            <xsl:value-of select="$status"/>
          </xsl:attribute>
          <xsl:attribute name="build">
            <xsl:value-of select="$build"/>
          </xsl:attribute>
          <xsl:attribute name="name">xbacklight</xsl:attribute>
          <xsl:attribute name="type">ref</xsl:attribute>
        </xsl:element>
        <xsl:element name="dependency">
          <xsl:attribute name="status">
            <xsl:value-of select="$status"/>
          </xsl:attribute>
          <xsl:attribute name="build">
            <xsl:value-of select="$build"/>
          </xsl:attribute>
          <xsl:attribute name="name">xcmsdb</xsl:attribute>
          <xsl:attribute name="type">ref</xsl:attribute>
        </xsl:element>
        <xsl:element name="dependency">
          <xsl:attribute name="status">
            <xsl:value-of select="$status"/>
          </xsl:attribute>
          <xsl:attribute name="build">
            <xsl:value-of select="$build"/>
          </xsl:attribute>
          <xsl:attribute name="name">xcursorgen</xsl:attribute>
          <xsl:attribute name="type">ref</xsl:attribute>
        </xsl:element>
        <xsl:element name="dependency">
          <xsl:attribute name="status">
            <xsl:value-of select="$status"/>
          </xsl:attribute>
          <xsl:attribute name="build">
            <xsl:value-of select="$build"/>
          </xsl:attribute>
          <xsl:attribute name="name">xdpyinfo</xsl:attribute>
          <xsl:attribute name="type">ref</xsl:attribute>
        </xsl:element>
        <xsl:element name="dependency">
          <xsl:attribute name="status">
            <xsl:value-of select="$status"/>
          </xsl:attribute>
          <xsl:attribute name="build">
            <xsl:value-of select="$build"/>
          </xsl:attribute>
          <xsl:attribute name="name">xdriinfo</xsl:attribute>
          <xsl:attribute name="type">ref</xsl:attribute>
        </xsl:element>
        <xsl:element name="dependency">
          <xsl:attribute name="status">
            <xsl:value-of select="$status"/>
          </xsl:attribute>
          <xsl:attribute name="build">
            <xsl:value-of select="$build"/>
          </xsl:attribute>
          <xsl:attribute name="name">xev</xsl:attribute>
          <xsl:attribute name="type">ref</xsl:attribute>
        </xsl:element>
        <xsl:element name="dependency">
          <xsl:attribute name="status">
            <xsl:value-of select="$status"/>
          </xsl:attribute>
          <xsl:attribute name="build">
            <xsl:value-of select="$build"/>
          </xsl:attribute>
          <xsl:attribute name="name">xgamma</xsl:attribute>
          <xsl:attribute name="type">ref</xsl:attribute>
        </xsl:element>
        <xsl:element name="dependency">
          <xsl:attribute name="status">
            <xsl:value-of select="$status"/>
          </xsl:attribute>
          <xsl:attribute name="build">
            <xsl:value-of select="$build"/>
          </xsl:attribute>
          <xsl:attribute name="name">xhost</xsl:attribute>
          <xsl:attribute name="type">ref</xsl:attribute>
        </xsl:element>
        <xsl:element name="dependency">
          <xsl:attribute name="status">
            <xsl:value-of select="$status"/>
          </xsl:attribute>
          <xsl:attribute name="build">
            <xsl:value-of select="$build"/>
          </xsl:attribute>
          <xsl:attribute name="name">xinput</xsl:attribute>
          <xsl:attribute name="type">ref</xsl:attribute>
        </xsl:element>
        <xsl:element name="dependency">
          <xsl:attribute name="status">
            <xsl:value-of select="$status"/>
          </xsl:attribute>
          <xsl:attribute name="build">
            <xsl:value-of select="$build"/>
          </xsl:attribute>
          <xsl:attribute name="name">xkbcomp</xsl:attribute>
          <xsl:attribute name="type">ref</xsl:attribute>
        </xsl:element>
        <xsl:element name="dependency">
          <xsl:attribute name="status">
            <xsl:value-of select="$status"/>
          </xsl:attribute>
          <xsl:attribute name="build">
            <xsl:value-of select="$build"/>
          </xsl:attribute>
          <xsl:attribute name="name">xkbevd</xsl:attribute>
          <xsl:attribute name="type">ref</xsl:attribute>
        </xsl:element>
        <xsl:element name="dependency">
          <xsl:attribute name="status">
            <xsl:value-of select="$status"/>
          </xsl:attribute>
          <xsl:attribute name="build">
            <xsl:value-of select="$build"/>
          </xsl:attribute>
          <xsl:attribute name="name">xkbutils</xsl:attribute>
          <xsl:attribute name="type">ref</xsl:attribute>
        </xsl:element>
        <xsl:element name="dependency">
          <xsl:attribute name="status">
            <xsl:value-of select="$status"/>
          </xsl:attribute>
          <xsl:attribute name="build">
            <xsl:value-of select="$build"/>
          </xsl:attribute>
          <xsl:attribute name="name">xkill</xsl:attribute>
          <xsl:attribute name="type">ref</xsl:attribute>
        </xsl:element>
        <xsl:element name="dependency">
          <xsl:attribute name="status">
            <xsl:value-of select="$status"/>
          </xsl:attribute>
          <xsl:attribute name="build">
            <xsl:value-of select="$build"/>
          </xsl:attribute>
          <xsl:attribute name="name">xlsatoms</xsl:attribute>
          <xsl:attribute name="type">ref</xsl:attribute>
        </xsl:element>
        <xsl:element name="dependency">
          <xsl:attribute name="status">
            <xsl:value-of select="$status"/>
          </xsl:attribute>
          <xsl:attribute name="build">
            <xsl:value-of select="$build"/>
          </xsl:attribute>
          <xsl:attribute name="name">xlsclients</xsl:attribute>
          <xsl:attribute name="type">ref</xsl:attribute>
        </xsl:element>
        <xsl:element name="dependency">
          <xsl:attribute name="status">
            <xsl:value-of select="$status"/>
          </xsl:attribute>
          <xsl:attribute name="build">
            <xsl:value-of select="$build"/>
          </xsl:attribute>
          <xsl:attribute name="name">xmessage</xsl:attribute>
          <xsl:attribute name="type">ref</xsl:attribute>
        </xsl:element>
        <xsl:element name="dependency">
          <xsl:attribute name="status">
            <xsl:value-of select="$status"/>
          </xsl:attribute>
          <xsl:attribute name="build">
            <xsl:value-of select="$build"/>
          </xsl:attribute>
          <xsl:attribute name="name">xmodmap</xsl:attribute>
          <xsl:attribute name="type">ref</xsl:attribute>
        </xsl:element>
        <xsl:element name="dependency">
          <xsl:attribute name="status">
            <xsl:value-of select="$status"/>
          </xsl:attribute>
          <xsl:attribute name="build">
            <xsl:value-of select="$build"/>
          </xsl:attribute>
          <xsl:attribute name="name">xpr</xsl:attribute>
          <xsl:attribute name="type">ref</xsl:attribute>
        </xsl:element>
        <xsl:element name="dependency">
          <xsl:attribute name="status">
            <xsl:value-of select="$status"/>
          </xsl:attribute>
          <xsl:attribute name="build">
            <xsl:value-of select="$build"/>
          </xsl:attribute>
          <xsl:attribute name="name">xprop</xsl:attribute>
          <xsl:attribute name="type">ref</xsl:attribute>
        </xsl:element>
        <xsl:element name="dependency">
          <xsl:attribute name="status">
            <xsl:value-of select="$status"/>
          </xsl:attribute>
          <xsl:attribute name="build">
            <xsl:value-of select="$build"/>
          </xsl:attribute>
          <xsl:attribute name="name">xrandr</xsl:attribute>
          <xsl:attribute name="type">ref</xsl:attribute>
        </xsl:element>
        <xsl:element name="dependency">
          <xsl:attribute name="status">
            <xsl:value-of select="$status"/>
          </xsl:attribute>
          <xsl:attribute name="build">
            <xsl:value-of select="$build"/>
          </xsl:attribute>
          <xsl:attribute name="name">xrdb</xsl:attribute>
          <xsl:attribute name="type">ref</xsl:attribute>
        </xsl:element>
        <xsl:element name="dependency">
          <xsl:attribute name="status">
            <xsl:value-of select="$status"/>
          </xsl:attribute>
          <xsl:attribute name="build">
            <xsl:value-of select="$build"/>
          </xsl:attribute>
          <xsl:attribute name="name">xrefresh</xsl:attribute>
          <xsl:attribute name="type">ref</xsl:attribute>
        </xsl:element>
        <xsl:element name="dependency">
          <xsl:attribute name="status">
            <xsl:value-of select="$status"/>
          </xsl:attribute>
          <xsl:attribute name="build">
            <xsl:value-of select="$build"/>
          </xsl:attribute>
          <xsl:attribute name="name">xset</xsl:attribute>
          <xsl:attribute name="type">ref</xsl:attribute>
        </xsl:element>
        <xsl:element name="dependency">
          <xsl:attribute name="status">
            <xsl:value-of select="$status"/>
          </xsl:attribute>
          <xsl:attribute name="build">
            <xsl:value-of select="$build"/>
          </xsl:attribute>
          <xsl:attribute name="name">xsetroot</xsl:attribute>
          <xsl:attribute name="type">ref</xsl:attribute>
        </xsl:element>
        <xsl:element name="dependency">
          <xsl:attribute name="status">
            <xsl:value-of select="$status"/>
          </xsl:attribute>
          <xsl:attribute name="build">
            <xsl:value-of select="$build"/>
          </xsl:attribute>
          <xsl:attribute name="name">xvinfo</xsl:attribute>
          <xsl:attribute name="type">ref</xsl:attribute>
        </xsl:element>
        <xsl:element name="dependency">
          <xsl:attribute name="status">
            <xsl:value-of select="$status"/>
          </xsl:attribute>
          <xsl:attribute name="build">
            <xsl:value-of select="$build"/>
          </xsl:attribute>
          <xsl:attribute name="name">xwd</xsl:attribute>
          <xsl:attribute name="type">ref</xsl:attribute>
        </xsl:element>
        <xsl:element name="dependency">
          <xsl:attribute name="status">
            <xsl:value-of select="$status"/>
          </xsl:attribute>
          <xsl:attribute name="build">
            <xsl:value-of select="$build"/>
          </xsl:attribute>
          <xsl:attribute name="name">xwininfo</xsl:attribute>
          <xsl:attribute name="type">ref</xsl:attribute>
        </xsl:element>
        <xsl:element name="dependency">
          <xsl:attribute name="status">
            <xsl:value-of select="$status"/>
          </xsl:attribute>
          <xsl:attribute name="build">
            <xsl:value-of select="$build"/>
          </xsl:attribute>
          <xsl:attribute name="name">xwud</xsl:attribute>
          <xsl:attribute name="type">ref</xsl:attribute>
        </xsl:element>
      </xsl:when>
      <xsl:when test="$section='xorg7-font'">
        <xsl:element name="dependency">
          <xsl:attribute name="status">
            <xsl:value-of select="$status"/>
          </xsl:attribute>
          <xsl:attribute name="build">
            <xsl:value-of select="$build"/>
          </xsl:attribute>
          <xsl:attribute name="name">encodings</xsl:attribute>
          <xsl:attribute name="type">ref</xsl:attribute>
        </xsl:element>
        <xsl:element name="dependency">
          <xsl:attribute name="status">
            <xsl:value-of select="$status"/>
          </xsl:attribute>
          <xsl:attribute name="build">
            <xsl:value-of select="$build"/>
          </xsl:attribute>
          <xsl:attribute name="name">font-adobe-utopia-type1</xsl:attribute>
          <xsl:attribute name="type">ref</xsl:attribute>
        </xsl:element>
        <xsl:element name="dependency">
          <xsl:attribute name="status">
            <xsl:value-of select="$status"/>
          </xsl:attribute>
          <xsl:attribute name="build">
            <xsl:value-of select="$build"/>
          </xsl:attribute>
          <xsl:attribute name="name">font-alias</xsl:attribute>
          <xsl:attribute name="type">ref</xsl:attribute>
        </xsl:element>
        <xsl:element name="dependency">
          <xsl:attribute name="status">
            <xsl:value-of select="$status"/>
          </xsl:attribute>
          <xsl:attribute name="build">
            <xsl:value-of select="$build"/>
          </xsl:attribute>
          <xsl:attribute name="name">font-bh-ttf</xsl:attribute>
          <xsl:attribute name="type">ref</xsl:attribute>
        </xsl:element>
        <xsl:element name="dependency">
          <xsl:attribute name="status">
            <xsl:value-of select="$status"/>
          </xsl:attribute>
          <xsl:attribute name="build">
            <xsl:value-of select="$build"/>
          </xsl:attribute>
          <xsl:attribute name="name">font-bh-type1</xsl:attribute>
          <xsl:attribute name="type">ref</xsl:attribute>
        </xsl:element>
        <xsl:element name="dependency">
          <xsl:attribute name="status">
            <xsl:value-of select="$status"/>
          </xsl:attribute>
          <xsl:attribute name="build">
            <xsl:value-of select="$build"/>
          </xsl:attribute>
          <xsl:attribute name="name">font-ibm-type1</xsl:attribute>
          <xsl:attribute name="type">ref</xsl:attribute>
        </xsl:element>
        <xsl:element name="dependency">
          <xsl:attribute name="status">
            <xsl:value-of select="$status"/>
          </xsl:attribute>
          <xsl:attribute name="build">
            <xsl:value-of select="$build"/>
          </xsl:attribute>
          <xsl:attribute name="name">font-misc-ethiopic</xsl:attribute>
          <xsl:attribute name="type">ref</xsl:attribute>
        </xsl:element>
        <xsl:element name="dependency">
          <xsl:attribute name="status">
            <xsl:value-of select="$status"/>
          </xsl:attribute>
          <xsl:attribute name="build">
            <xsl:value-of select="$build"/>
          </xsl:attribute>
          <xsl:attribute name="name">font-util</xsl:attribute>
          <xsl:attribute name="type">ref</xsl:attribute>
        </xsl:element>
        <xsl:element name="dependency">
          <xsl:attribute name="status">
            <xsl:value-of select="$status"/>
          </xsl:attribute>
          <xsl:attribute name="build">
            <xsl:value-of select="$build"/>
          </xsl:attribute>
          <xsl:attribute name="name">font-xfree86-type1</xsl:attribute>
          <xsl:attribute name="type">ref</xsl:attribute>
        </xsl:element>
      </xsl:when>
      <xsl:when test="$section='xorg7-legacy'">
        <xsl:element name="dependency">
          <xsl:attribute name="status">
            <xsl:value-of select="$status"/>
          </xsl:attribute>
          <xsl:attribute name="build">
            <xsl:value-of select="$build"/>
          </xsl:attribute>
          <xsl:attribute name="name">bdftopcf</xsl:attribute>
          <xsl:attribute name="type">ref</xsl:attribute>
        </xsl:element>
        <xsl:element name="dependency">
          <xsl:attribute name="status">
            <xsl:value-of select="$status"/>
          </xsl:attribute>
          <xsl:attribute name="build">
            <xsl:value-of select="$build"/>
          </xsl:attribute>
          <xsl:attribute name="name">font-adobe-100dpi</xsl:attribute>
          <xsl:attribute name="type">ref</xsl:attribute>
        </xsl:element>
        <xsl:element name="dependency">
          <xsl:attribute name="status">
            <xsl:value-of select="$status"/>
          </xsl:attribute>
          <xsl:attribute name="build">
            <xsl:value-of select="$build"/>
          </xsl:attribute>
          <xsl:attribute name="name">font-adobe-75dpi</xsl:attribute>
          <xsl:attribute name="type">ref</xsl:attribute>
        </xsl:element>
        <xsl:element name="dependency">
          <xsl:attribute name="status">
            <xsl:value-of select="$status"/>
          </xsl:attribute>
          <xsl:attribute name="build">
            <xsl:value-of select="$build"/>
          </xsl:attribute>
          <xsl:attribute name="name">font-jis-misc</xsl:attribute>
          <xsl:attribute name="type">ref</xsl:attribute>
        </xsl:element>
        <xsl:element name="dependency">
          <xsl:attribute name="status">
            <xsl:value-of select="$status"/>
          </xsl:attribute>
          <xsl:attribute name="build">
            <xsl:value-of select="$build"/>
          </xsl:attribute>
          <xsl:attribute name="name">font-daewoo-misc</xsl:attribute>
          <xsl:attribute name="type">ref</xsl:attribute>
        </xsl:element>
        <xsl:element name="dependency">
          <xsl:attribute name="status">
            <xsl:value-of select="$status"/>
          </xsl:attribute>
          <xsl:attribute name="build">
            <xsl:value-of select="$build"/>
          </xsl:attribute>
          <xsl:attribute name="name">font-isas-misc</xsl:attribute>
          <xsl:attribute name="type">ref</xsl:attribute>
        </xsl:element>
        <xsl:element name="dependency">
          <xsl:attribute name="status">
            <xsl:value-of select="$status"/>
          </xsl:attribute>
          <xsl:attribute name="build">
            <xsl:value-of select="$build"/>
          </xsl:attribute>
          <xsl:attribute name="name">font-misc-misc</xsl:attribute>
          <xsl:attribute name="type">ref</xsl:attribute>
        </xsl:element>
      </xsl:when>
      <xsl:when test="$section='xorg7-lib'">
        <xsl:element name="dependency">
          <xsl:attribute name="status">
            <xsl:value-of select="$status"/>
          </xsl:attribute>
          <xsl:attribute name="build">
            <xsl:value-of select="$build"/>
          </xsl:attribute>
          <xsl:attribute name="name">xtrans</xsl:attribute>
          <xsl:attribute name="type">ref</xsl:attribute>
        </xsl:element>
        <xsl:element name="dependency">
          <xsl:attribute name="status">
            <xsl:value-of select="$status"/>
          </xsl:attribute>
          <xsl:attribute name="build">
            <xsl:value-of select="$build"/>
          </xsl:attribute>
          <xsl:attribute name="name">libX11</xsl:attribute>
          <xsl:attribute name="type">ref</xsl:attribute>
        </xsl:element>
        <xsl:element name="dependency">
          <xsl:attribute name="status">
            <xsl:value-of select="$status"/>
          </xsl:attribute>
          <xsl:attribute name="build">
            <xsl:value-of select="$build"/>
          </xsl:attribute>
          <xsl:attribute name="name">libXext</xsl:attribute>
          <xsl:attribute name="type">ref</xsl:attribute>
        </xsl:element>
        <xsl:element name="dependency">
          <xsl:attribute name="status">
            <xsl:value-of select="$status"/>
          </xsl:attribute>
          <xsl:attribute name="build">
            <xsl:value-of select="$build"/>
          </xsl:attribute>
          <xsl:attribute name="name">libFS</xsl:attribute>
          <xsl:attribute name="type">ref</xsl:attribute>
        </xsl:element>
        <xsl:element name="dependency">
          <xsl:attribute name="status">
            <xsl:value-of select="$status"/>
          </xsl:attribute>
          <xsl:attribute name="build">
            <xsl:value-of select="$build"/>
          </xsl:attribute>
          <xsl:attribute name="name">libICE</xsl:attribute>
          <xsl:attribute name="type">ref</xsl:attribute>
        </xsl:element>
        <xsl:element name="dependency">
          <xsl:attribute name="status">
            <xsl:value-of select="$status"/>
          </xsl:attribute>
          <xsl:attribute name="build">
            <xsl:value-of select="$build"/>
          </xsl:attribute>
          <xsl:attribute name="name">libSM</xsl:attribute>
          <xsl:attribute name="type">ref</xsl:attribute>
        </xsl:element>
        <xsl:element name="dependency">
          <xsl:attribute name="status">
            <xsl:value-of select="$status"/>
          </xsl:attribute>
          <xsl:attribute name="build">
            <xsl:value-of select="$build"/>
          </xsl:attribute>
          <xsl:attribute name="name">libXScrnSaver</xsl:attribute>
          <xsl:attribute name="type">ref</xsl:attribute>
        </xsl:element>
        <xsl:element name="dependency">
          <xsl:attribute name="status">
            <xsl:value-of select="$status"/>
          </xsl:attribute>
          <xsl:attribute name="build">
            <xsl:value-of select="$build"/>
          </xsl:attribute>
          <xsl:attribute name="name">libXt</xsl:attribute>
          <xsl:attribute name="type">ref</xsl:attribute>
        </xsl:element>
        <xsl:element name="dependency">
          <xsl:attribute name="status">
            <xsl:value-of select="$status"/>
          </xsl:attribute>
          <xsl:attribute name="build">
            <xsl:value-of select="$build"/>
          </xsl:attribute>
          <xsl:attribute name="name">libXmu</xsl:attribute>
          <xsl:attribute name="type">ref</xsl:attribute>
        </xsl:element>
        <xsl:element name="dependency">
          <xsl:attribute name="status">
            <xsl:value-of select="$status"/>
          </xsl:attribute>
          <xsl:attribute name="build">
            <xsl:value-of select="$build"/>
          </xsl:attribute>
          <xsl:attribute name="name">libXpm</xsl:attribute>
          <xsl:attribute name="type">ref</xsl:attribute>
        </xsl:element>
        <xsl:element name="dependency">
          <xsl:attribute name="status">
            <xsl:value-of select="$status"/>
          </xsl:attribute>
          <xsl:attribute name="build">
            <xsl:value-of select="$build"/>
          </xsl:attribute>
          <xsl:attribute name="name">libXaw</xsl:attribute>
          <xsl:attribute name="type">ref</xsl:attribute>
        </xsl:element>
        <xsl:element name="dependency">
          <xsl:attribute name="status">
            <xsl:value-of select="$status"/>
          </xsl:attribute>
          <xsl:attribute name="build">
            <xsl:value-of select="$build"/>
          </xsl:attribute>
          <xsl:attribute name="name">libXfixes</xsl:attribute>
          <xsl:attribute name="type">ref</xsl:attribute>
        </xsl:element>
        <xsl:element name="dependency">
          <xsl:attribute name="status">
            <xsl:value-of select="$status"/>
          </xsl:attribute>
          <xsl:attribute name="build">
            <xsl:value-of select="$build"/>
          </xsl:attribute>
          <xsl:attribute name="name">libXcomposite</xsl:attribute>
          <xsl:attribute name="type">ref</xsl:attribute>
        </xsl:element>
        <xsl:element name="dependency">
          <xsl:attribute name="status">
            <xsl:value-of select="$status"/>
          </xsl:attribute>
          <xsl:attribute name="build">
            <xsl:value-of select="$build"/>
          </xsl:attribute>
          <xsl:attribute name="name">libXrender</xsl:attribute>
          <xsl:attribute name="type">ref</xsl:attribute>
        </xsl:element>
        <xsl:element name="dependency">
          <xsl:attribute name="status">
            <xsl:value-of select="$status"/>
          </xsl:attribute>
          <xsl:attribute name="build">
            <xsl:value-of select="$build"/>
          </xsl:attribute>
          <xsl:attribute name="name">libXcursor</xsl:attribute>
          <xsl:attribute name="type">ref</xsl:attribute>
        </xsl:element>
        <xsl:element name="dependency">
          <xsl:attribute name="status">
            <xsl:value-of select="$status"/>
          </xsl:attribute>
          <xsl:attribute name="build">
            <xsl:value-of select="$build"/>
          </xsl:attribute>
          <xsl:attribute name="name">libXdamage</xsl:attribute>
          <xsl:attribute name="type">ref</xsl:attribute>
        </xsl:element>
        <xsl:element name="dependency">
          <xsl:attribute name="status">
            <xsl:value-of select="$status"/>
          </xsl:attribute>
          <xsl:attribute name="build">
            <xsl:value-of select="$build"/>
          </xsl:attribute>
          <xsl:attribute name="name">libfontenc</xsl:attribute>
          <xsl:attribute name="type">ref</xsl:attribute>
        </xsl:element>
        <xsl:element name="dependency">
          <xsl:attribute name="status">
            <xsl:value-of select="$status"/>
          </xsl:attribute>
          <xsl:attribute name="build">
            <xsl:value-of select="$build"/>
          </xsl:attribute>
          <xsl:attribute name="name">libXfont2</xsl:attribute>
          <xsl:attribute name="type">ref</xsl:attribute>
        </xsl:element>
        <xsl:element name="dependency">
          <xsl:attribute name="status">
            <xsl:value-of select="$status"/>
          </xsl:attribute>
          <xsl:attribute name="build">
            <xsl:value-of select="$build"/>
          </xsl:attribute>
          <xsl:attribute name="name">libXft</xsl:attribute>
          <xsl:attribute name="type">ref</xsl:attribute>
        </xsl:element>
        <xsl:element name="dependency">
          <xsl:attribute name="status">
            <xsl:value-of select="$status"/>
          </xsl:attribute>
          <xsl:attribute name="build">
            <xsl:value-of select="$build"/>
          </xsl:attribute>
          <xsl:attribute name="name">libXi</xsl:attribute>
          <xsl:attribute name="type">ref</xsl:attribute>
        </xsl:element>
        <xsl:element name="dependency">
          <xsl:attribute name="status">
            <xsl:value-of select="$status"/>
          </xsl:attribute>
          <xsl:attribute name="build">
            <xsl:value-of select="$build"/>
          </xsl:attribute>
          <xsl:attribute name="name">libXinerama</xsl:attribute>
          <xsl:attribute name="type">ref</xsl:attribute>
        </xsl:element>
        <xsl:element name="dependency">
          <xsl:attribute name="status">
            <xsl:value-of select="$status"/>
          </xsl:attribute>
          <xsl:attribute name="build">
            <xsl:value-of select="$build"/>
          </xsl:attribute>
          <xsl:attribute name="name">libXrandr</xsl:attribute>
          <xsl:attribute name="type">ref</xsl:attribute>
        </xsl:element>
        <xsl:element name="dependency">
          <xsl:attribute name="status">
            <xsl:value-of select="$status"/>
          </xsl:attribute>
          <xsl:attribute name="build">
            <xsl:value-of select="$build"/>
          </xsl:attribute>
          <xsl:attribute name="name">libXres</xsl:attribute>
          <xsl:attribute name="type">ref</xsl:attribute>
        </xsl:element>
        <xsl:element name="dependency">
          <xsl:attribute name="status">
            <xsl:value-of select="$status"/>
          </xsl:attribute>
          <xsl:attribute name="build">
            <xsl:value-of select="$build"/>
          </xsl:attribute>
          <xsl:attribute name="name">libXtst</xsl:attribute>
          <xsl:attribute name="type">ref</xsl:attribute>
        </xsl:element>
        <xsl:element name="dependency">
          <xsl:attribute name="status">
            <xsl:value-of select="$status"/>
          </xsl:attribute>
          <xsl:attribute name="build">
            <xsl:value-of select="$build"/>
          </xsl:attribute>
          <xsl:attribute name="name">libXv</xsl:attribute>
          <xsl:attribute name="type">ref</xsl:attribute>
        </xsl:element>
        <xsl:element name="dependency">
          <xsl:attribute name="status">
            <xsl:value-of select="$status"/>
          </xsl:attribute>
          <xsl:attribute name="build">
            <xsl:value-of select="$build"/>
          </xsl:attribute>
          <xsl:attribute name="name">libXvMC</xsl:attribute>
          <xsl:attribute name="type">ref</xsl:attribute>
        </xsl:element>
        <xsl:element name="dependency">
          <xsl:attribute name="status">
            <xsl:value-of select="$status"/>
          </xsl:attribute>
          <xsl:attribute name="build">
            <xsl:value-of select="$build"/>
          </xsl:attribute>
          <xsl:attribute name="name">libXxf86dga</xsl:attribute>
          <xsl:attribute name="type">ref</xsl:attribute>
        </xsl:element>
        <xsl:element name="dependency">
          <xsl:attribute name="status">
            <xsl:value-of select="$status"/>
          </xsl:attribute>
          <xsl:attribute name="build">
            <xsl:value-of select="$build"/>
          </xsl:attribute>
          <xsl:attribute name="name">libXxf86vm</xsl:attribute>
          <xsl:attribute name="type">ref</xsl:attribute>
        </xsl:element>
        <xsl:element name="dependency">
          <xsl:attribute name="status">
            <xsl:value-of select="$status"/>
          </xsl:attribute>
          <xsl:attribute name="build">
            <xsl:value-of select="$build"/>
          </xsl:attribute>
          <xsl:attribute name="name">libdmx</xsl:attribute>
          <xsl:attribute name="type">ref</xsl:attribute>
        </xsl:element>
        <xsl:element name="dependency">
          <xsl:attribute name="status">
            <xsl:value-of select="$status"/>
          </xsl:attribute>
          <xsl:attribute name="build">
            <xsl:value-of select="$build"/>
          </xsl:attribute>
          <xsl:attribute name="name">libpciaccess</xsl:attribute>
          <xsl:attribute name="type">ref</xsl:attribute>
        </xsl:element>
        <xsl:element name="dependency">
          <xsl:attribute name="status">
            <xsl:value-of select="$status"/>
          </xsl:attribute>
          <xsl:attribute name="build">
            <xsl:value-of select="$build"/>
          </xsl:attribute>
          <xsl:attribute name="name">libxkbfile</xsl:attribute>
          <xsl:attribute name="type">ref</xsl:attribute>
        </xsl:element>
        <xsl:element name="dependency">
          <xsl:attribute name="status">
            <xsl:value-of select="$status"/>
          </xsl:attribute>
          <xsl:attribute name="build">
            <xsl:value-of select="$build"/>
          </xsl:attribute>
          <xsl:attribute name="name">libxshmfence</xsl:attribute>
          <xsl:attribute name="type">ref</xsl:attribute>
        </xsl:element>
      </xsl:when>
    <xsl:otherwise>
      <xsl:message>
        <xsl:text>You should not be seeing this</xsl:text>
      </xsl:message>
    </xsl:otherwise>
  </xsl:choose>
</xsl:template>
</xsl:stylesheet>

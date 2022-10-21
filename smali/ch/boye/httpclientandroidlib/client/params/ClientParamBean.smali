.class public Lch/boye/httpclientandroidlib/client/params/ClientParamBean;
.super Lch/boye/httpclientandroidlib/params/HttpAbstractParamBean;
.source "ClientParamBean.java"


# annotations
.annotation build Lch/boye/httpclientandroidlib/annotation/NotThreadSafe;
.end annotation


# direct methods
.method public constructor <init>(Lch/boye/httpclientandroidlib/params/HttpParams;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Lch/boye/httpclientandroidlib/params/HttpAbstractParamBean;-><init>(Lch/boye/httpclientandroidlib/params/HttpParams;)V

    return-void
.end method


# virtual methods
.method public setAllowCircularRedirects(Z)V
    .locals 2

    .line 74
    iget-object v0, p0, Lch/boye/httpclientandroidlib/params/HttpAbstractParamBean;->params:Lch/boye/httpclientandroidlib/params/HttpParams;

    const-string v1, "http.protocol.allow-circular-redirects"

    invoke-interface {v0, v1, p1}, Lch/boye/httpclientandroidlib/params/HttpParams;->setBooleanParameter(Ljava/lang/String;Z)Lch/boye/httpclientandroidlib/params/HttpParams;

    return-void
.end method

.method public setConnectionManagerFactoryClassName(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 58
    iget-object v0, p0, Lch/boye/httpclientandroidlib/params/HttpAbstractParamBean;->params:Lch/boye/httpclientandroidlib/params/HttpParams;

    const-string v1, "http.connection-manager.factory-class-name"

    invoke-interface {v0, v1, p1}, Lch/boye/httpclientandroidlib/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lch/boye/httpclientandroidlib/params/HttpParams;

    return-void
.end method

.method public setConnectionManagerTimeout(J)V
    .locals 2

    .line 101
    iget-object v0, p0, Lch/boye/httpclientandroidlib/params/HttpAbstractParamBean;->params:Lch/boye/httpclientandroidlib/params/HttpParams;

    const-string v1, "http.conn-manager.timeout"

    invoke-interface {v0, v1, p1, p2}, Lch/boye/httpclientandroidlib/params/HttpParams;->setLongParameter(Ljava/lang/String;J)Lch/boye/httpclientandroidlib/params/HttpParams;

    return-void
.end method

.method public setCookiePolicy(Ljava/lang/String;)V
    .locals 2

    .line 82
    iget-object v0, p0, Lch/boye/httpclientandroidlib/params/HttpAbstractParamBean;->params:Lch/boye/httpclientandroidlib/params/HttpParams;

    const-string v1, "http.protocol.cookie-policy"

    invoke-interface {v0, v1, p1}, Lch/boye/httpclientandroidlib/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lch/boye/httpclientandroidlib/params/HttpParams;

    return-void
.end method

.method public setDefaultHeaders(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lch/boye/httpclientandroidlib/Header;",
            ">;)V"
        }
    .end annotation

    .line 90
    iget-object v0, p0, Lch/boye/httpclientandroidlib/params/HttpAbstractParamBean;->params:Lch/boye/httpclientandroidlib/params/HttpParams;

    const-string v1, "http.default-headers"

    invoke-interface {v0, v1, p1}, Lch/boye/httpclientandroidlib/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lch/boye/httpclientandroidlib/params/HttpParams;

    return-void
.end method

.method public setDefaultHost(Lch/boye/httpclientandroidlib/HttpHost;)V
    .locals 2

    .line 94
    iget-object v0, p0, Lch/boye/httpclientandroidlib/params/HttpAbstractParamBean;->params:Lch/boye/httpclientandroidlib/params/HttpParams;

    const-string v1, "http.default-host"

    invoke-interface {v0, v1, p1}, Lch/boye/httpclientandroidlib/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lch/boye/httpclientandroidlib/params/HttpParams;

    return-void
.end method

.method public setHandleAuthentication(Z)V
    .locals 2

    .line 78
    iget-object v0, p0, Lch/boye/httpclientandroidlib/params/HttpAbstractParamBean;->params:Lch/boye/httpclientandroidlib/params/HttpParams;

    const-string v1, "http.protocol.handle-authentication"

    invoke-interface {v0, v1, p1}, Lch/boye/httpclientandroidlib/params/HttpParams;->setBooleanParameter(Ljava/lang/String;Z)Lch/boye/httpclientandroidlib/params/HttpParams;

    return-void
.end method

.method public setHandleRedirects(Z)V
    .locals 2

    .line 62
    iget-object v0, p0, Lch/boye/httpclientandroidlib/params/HttpAbstractParamBean;->params:Lch/boye/httpclientandroidlib/params/HttpParams;

    const-string v1, "http.protocol.handle-redirects"

    invoke-interface {v0, v1, p1}, Lch/boye/httpclientandroidlib/params/HttpParams;->setBooleanParameter(Ljava/lang/String;Z)Lch/boye/httpclientandroidlib/params/HttpParams;

    return-void
.end method

.method public setMaxRedirects(I)V
    .locals 2

    .line 70
    iget-object v0, p0, Lch/boye/httpclientandroidlib/params/HttpAbstractParamBean;->params:Lch/boye/httpclientandroidlib/params/HttpParams;

    const-string v1, "http.protocol.max-redirects"

    invoke-interface {v0, v1, p1}, Lch/boye/httpclientandroidlib/params/HttpParams;->setIntParameter(Ljava/lang/String;I)Lch/boye/httpclientandroidlib/params/HttpParams;

    return-void
.end method

.method public setRejectRelativeRedirect(Z)V
    .locals 2

    .line 66
    iget-object v0, p0, Lch/boye/httpclientandroidlib/params/HttpAbstractParamBean;->params:Lch/boye/httpclientandroidlib/params/HttpParams;

    const-string v1, "http.protocol.reject-relative-redirect"

    invoke-interface {v0, v1, p1}, Lch/boye/httpclientandroidlib/params/HttpParams;->setBooleanParameter(Ljava/lang/String;Z)Lch/boye/httpclientandroidlib/params/HttpParams;

    return-void
.end method

.method public setVirtualHost(Lch/boye/httpclientandroidlib/HttpHost;)V
    .locals 2

    .line 86
    iget-object v0, p0, Lch/boye/httpclientandroidlib/params/HttpAbstractParamBean;->params:Lch/boye/httpclientandroidlib/params/HttpParams;

    const-string v1, "http.virtual-host"

    invoke-interface {v0, v1, p1}, Lch/boye/httpclientandroidlib/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lch/boye/httpclientandroidlib/params/HttpParams;

    return-void
.end method

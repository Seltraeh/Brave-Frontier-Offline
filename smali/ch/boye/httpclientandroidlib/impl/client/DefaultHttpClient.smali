.class public Lch/boye/httpclientandroidlib/impl/client/DefaultHttpClient;
.super Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;
.source "DefaultHttpClient.java"


# annotations
.annotation build Lch/boye/httpclientandroidlib/annotation/ThreadSafe;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 146
    invoke-direct {p0, v0, v0}, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;-><init>(Lch/boye/httpclientandroidlib/conn/ClientConnectionManager;Lch/boye/httpclientandroidlib/params/HttpParams;)V

    return-void
.end method

.method public constructor <init>(Lch/boye/httpclientandroidlib/conn/ClientConnectionManager;)V
    .locals 1

    const/4 v0, 0x0

    .line 136
    invoke-direct {p0, p1, v0}, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;-><init>(Lch/boye/httpclientandroidlib/conn/ClientConnectionManager;Lch/boye/httpclientandroidlib/params/HttpParams;)V

    return-void
.end method

.method public constructor <init>(Lch/boye/httpclientandroidlib/conn/ClientConnectionManager;Lch/boye/httpclientandroidlib/params/HttpParams;)V
    .locals 0

    .line 127
    invoke-direct {p0, p1, p2}, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;-><init>(Lch/boye/httpclientandroidlib/conn/ClientConnectionManager;Lch/boye/httpclientandroidlib/params/HttpParams;)V

    return-void
.end method

.method public constructor <init>(Lch/boye/httpclientandroidlib/params/HttpParams;)V
    .locals 1

    const/4 v0, 0x0

    .line 141
    invoke-direct {p0, v0, p1}, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;-><init>(Lch/boye/httpclientandroidlib/conn/ClientConnectionManager;Lch/boye/httpclientandroidlib/params/HttpParams;)V

    return-void
.end method

.method public static setDefaultHttpParams(Lch/boye/httpclientandroidlib/params/HttpParams;)V
    .locals 3

    .line 174
    sget-object v0, Lch/boye/httpclientandroidlib/HttpVersion;->HTTP_1_1:Lch/boye/httpclientandroidlib/HttpVersion;

    invoke-static {p0, v0}, Lch/boye/httpclientandroidlib/params/HttpProtocolParams;->setVersion(Lch/boye/httpclientandroidlib/params/HttpParams;Lch/boye/httpclientandroidlib/ProtocolVersion;)V

    .line 175
    sget-object v0, Lch/boye/httpclientandroidlib/protocol/HTTP;->DEF_CONTENT_CHARSET:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lch/boye/httpclientandroidlib/params/HttpProtocolParams;->setContentCharset(Lch/boye/httpclientandroidlib/params/HttpParams;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 176
    invoke-static {p0, v0}, Lch/boye/httpclientandroidlib/params/HttpConnectionParams;->setTcpNoDelay(Lch/boye/httpclientandroidlib/params/HttpParams;Z)V

    const/16 v0, 0x2000

    .line 177
    invoke-static {p0, v0}, Lch/boye/httpclientandroidlib/params/HttpConnectionParams;->setSocketBufferSize(Lch/boye/httpclientandroidlib/params/HttpParams;I)V

    .line 180
    const-class v0, Lch/boye/httpclientandroidlib/impl/client/DefaultHttpClient;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v1, "ch.boye.httpclientandroidlib.client"

    invoke-static {v1, v0}, Lch/boye/httpclientandroidlib/util/VersionInfo;->loadVersionInfo(Ljava/lang/String;Ljava/lang/ClassLoader;)Lch/boye/httpclientandroidlib/util/VersionInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 182
    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/util/VersionInfo;->getRelease()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "UNAVAILABLE"

    .line 184
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Apache-HttpClient/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " (java 1.5)"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lch/boye/httpclientandroidlib/params/HttpProtocolParams;->setUserAgent(Lch/boye/httpclientandroidlib/params/HttpParams;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected createHttpParams()Lch/boye/httpclientandroidlib/params/HttpParams;
    .locals 1

    .line 157
    new-instance v0, Lch/boye/httpclientandroidlib/params/SyncBasicHttpParams;

    invoke-direct {v0}, Lch/boye/httpclientandroidlib/params/SyncBasicHttpParams;-><init>()V

    .line 158
    invoke-static {v0}, Lch/boye/httpclientandroidlib/impl/client/DefaultHttpClient;->setDefaultHttpParams(Lch/boye/httpclientandroidlib/params/HttpParams;)V

    return-object v0
.end method

.method protected createHttpProcessor()Lch/boye/httpclientandroidlib/protocol/BasicHttpProcessor;
    .locals 2

    .line 208
    new-instance v0, Lch/boye/httpclientandroidlib/protocol/BasicHttpProcessor;

    invoke-direct {v0}, Lch/boye/httpclientandroidlib/protocol/BasicHttpProcessor;-><init>()V

    .line 209
    new-instance v1, Lch/boye/httpclientandroidlib/client/protocol/RequestDefaultHeaders;

    invoke-direct {v1}, Lch/boye/httpclientandroidlib/client/protocol/RequestDefaultHeaders;-><init>()V

    invoke-virtual {v0, v1}, Lch/boye/httpclientandroidlib/protocol/BasicHttpProcessor;->addInterceptor(Lch/boye/httpclientandroidlib/HttpRequestInterceptor;)V

    .line 211
    new-instance v1, Lch/boye/httpclientandroidlib/protocol/RequestContent;

    invoke-direct {v1}, Lch/boye/httpclientandroidlib/protocol/RequestContent;-><init>()V

    invoke-virtual {v0, v1}, Lch/boye/httpclientandroidlib/protocol/BasicHttpProcessor;->addInterceptor(Lch/boye/httpclientandroidlib/HttpRequestInterceptor;)V

    .line 212
    new-instance v1, Lch/boye/httpclientandroidlib/protocol/RequestTargetHost;

    invoke-direct {v1}, Lch/boye/httpclientandroidlib/protocol/RequestTargetHost;-><init>()V

    invoke-virtual {v0, v1}, Lch/boye/httpclientandroidlib/protocol/BasicHttpProcessor;->addInterceptor(Lch/boye/httpclientandroidlib/HttpRequestInterceptor;)V

    .line 214
    new-instance v1, Lch/boye/httpclientandroidlib/client/protocol/RequestClientConnControl;

    invoke-direct {v1}, Lch/boye/httpclientandroidlib/client/protocol/RequestClientConnControl;-><init>()V

    invoke-virtual {v0, v1}, Lch/boye/httpclientandroidlib/protocol/BasicHttpProcessor;->addInterceptor(Lch/boye/httpclientandroidlib/HttpRequestInterceptor;)V

    .line 215
    new-instance v1, Lch/boye/httpclientandroidlib/protocol/RequestUserAgent;

    invoke-direct {v1}, Lch/boye/httpclientandroidlib/protocol/RequestUserAgent;-><init>()V

    invoke-virtual {v0, v1}, Lch/boye/httpclientandroidlib/protocol/BasicHttpProcessor;->addInterceptor(Lch/boye/httpclientandroidlib/HttpRequestInterceptor;)V

    .line 216
    new-instance v1, Lch/boye/httpclientandroidlib/protocol/RequestExpectContinue;

    invoke-direct {v1}, Lch/boye/httpclientandroidlib/protocol/RequestExpectContinue;-><init>()V

    invoke-virtual {v0, v1}, Lch/boye/httpclientandroidlib/protocol/BasicHttpProcessor;->addInterceptor(Lch/boye/httpclientandroidlib/HttpRequestInterceptor;)V

    .line 218
    new-instance v1, Lch/boye/httpclientandroidlib/client/protocol/RequestAddCookies;

    invoke-direct {v1}, Lch/boye/httpclientandroidlib/client/protocol/RequestAddCookies;-><init>()V

    invoke-virtual {v0, v1}, Lch/boye/httpclientandroidlib/protocol/BasicHttpProcessor;->addInterceptor(Lch/boye/httpclientandroidlib/HttpRequestInterceptor;)V

    .line 219
    new-instance v1, Lch/boye/httpclientandroidlib/client/protocol/ResponseProcessCookies;

    invoke-direct {v1}, Lch/boye/httpclientandroidlib/client/protocol/ResponseProcessCookies;-><init>()V

    invoke-virtual {v0, v1}, Lch/boye/httpclientandroidlib/protocol/BasicHttpProcessor;->addInterceptor(Lch/boye/httpclientandroidlib/HttpResponseInterceptor;)V

    .line 221
    new-instance v1, Lch/boye/httpclientandroidlib/client/protocol/RequestAuthCache;

    invoke-direct {v1}, Lch/boye/httpclientandroidlib/client/protocol/RequestAuthCache;-><init>()V

    invoke-virtual {v0, v1}, Lch/boye/httpclientandroidlib/protocol/BasicHttpProcessor;->addInterceptor(Lch/boye/httpclientandroidlib/HttpRequestInterceptor;)V

    .line 222
    new-instance v1, Lch/boye/httpclientandroidlib/client/protocol/RequestTargetAuthentication;

    invoke-direct {v1}, Lch/boye/httpclientandroidlib/client/protocol/RequestTargetAuthentication;-><init>()V

    invoke-virtual {v0, v1}, Lch/boye/httpclientandroidlib/protocol/BasicHttpProcessor;->addInterceptor(Lch/boye/httpclientandroidlib/HttpRequestInterceptor;)V

    .line 223
    new-instance v1, Lch/boye/httpclientandroidlib/client/protocol/RequestProxyAuthentication;

    invoke-direct {v1}, Lch/boye/httpclientandroidlib/client/protocol/RequestProxyAuthentication;-><init>()V

    invoke-virtual {v0, v1}, Lch/boye/httpclientandroidlib/protocol/BasicHttpProcessor;->addInterceptor(Lch/boye/httpclientandroidlib/HttpRequestInterceptor;)V

    return-object v0
.end method

.class public Lch/boye/httpclientandroidlib/impl/client/ProxyClient;
.super Ljava/lang/Object;
.source "ProxyClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lch/boye/httpclientandroidlib/impl/client/ProxyClient$ProxyConnection;
    }
.end annotation


# instance fields
.field private final authSchemeRegistry:Lch/boye/httpclientandroidlib/auth/AuthSchemeRegistry;

.field private final authenticator:Lch/boye/httpclientandroidlib/impl/client/HttpAuthenticator;

.field private final httpProcessor:Lch/boye/httpclientandroidlib/protocol/HttpProcessor;

.field private final params:Lch/boye/httpclientandroidlib/params/HttpParams;

.field private final proxyAuthState:Lch/boye/httpclientandroidlib/auth/AuthState;

.field private final proxyAuthStrategy:Lch/boye/httpclientandroidlib/impl/client/ProxyAuthenticationStrategy;

.field private final requestExec:Lch/boye/httpclientandroidlib/protocol/HttpRequestExecutor;

.field private final reuseStrategy:Lch/boye/httpclientandroidlib/ConnectionReuseStrategy;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 115
    new-instance v0, Lch/boye/httpclientandroidlib/params/BasicHttpParams;

    invoke-direct {v0}, Lch/boye/httpclientandroidlib/params/BasicHttpParams;-><init>()V

    invoke-direct {p0, v0}, Lch/boye/httpclientandroidlib/impl/client/ProxyClient;-><init>(Lch/boye/httpclientandroidlib/params/HttpParams;)V

    return-void
.end method

.method public constructor <init>(Lch/boye/httpclientandroidlib/params/HttpParams;)V
    .locals 4

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 93
    new-instance v0, Lch/boye/httpclientandroidlib/protocol/ImmutableHttpProcessor;

    const/4 v1, 0x5

    new-array v1, v1, [Lch/boye/httpclientandroidlib/HttpRequestInterceptor;

    const/4 v2, 0x0

    new-instance v3, Lch/boye/httpclientandroidlib/protocol/RequestContent;

    invoke-direct {v3}, Lch/boye/httpclientandroidlib/protocol/RequestContent;-><init>()V

    aput-object v3, v1, v2

    const/4 v2, 0x1

    new-instance v3, Lch/boye/httpclientandroidlib/protocol/RequestTargetHost;

    invoke-direct {v3}, Lch/boye/httpclientandroidlib/protocol/RequestTargetHost;-><init>()V

    aput-object v3, v1, v2

    const/4 v2, 0x2

    new-instance v3, Lch/boye/httpclientandroidlib/client/protocol/RequestClientConnControl;

    invoke-direct {v3}, Lch/boye/httpclientandroidlib/client/protocol/RequestClientConnControl;-><init>()V

    aput-object v3, v1, v2

    const/4 v2, 0x3

    new-instance v3, Lch/boye/httpclientandroidlib/protocol/RequestUserAgent;

    invoke-direct {v3}, Lch/boye/httpclientandroidlib/protocol/RequestUserAgent;-><init>()V

    aput-object v3, v1, v2

    const/4 v2, 0x4

    new-instance v3, Lch/boye/httpclientandroidlib/client/protocol/RequestProxyAuthentication;

    invoke-direct {v3}, Lch/boye/httpclientandroidlib/client/protocol/RequestProxyAuthentication;-><init>()V

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Lch/boye/httpclientandroidlib/protocol/ImmutableHttpProcessor;-><init>([Lch/boye/httpclientandroidlib/HttpRequestInterceptor;)V

    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/ProxyClient;->httpProcessor:Lch/boye/httpclientandroidlib/protocol/HttpProcessor;

    .line 100
    new-instance v0, Lch/boye/httpclientandroidlib/protocol/HttpRequestExecutor;

    invoke-direct {v0}, Lch/boye/httpclientandroidlib/protocol/HttpRequestExecutor;-><init>()V

    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/ProxyClient;->requestExec:Lch/boye/httpclientandroidlib/protocol/HttpRequestExecutor;

    .line 101
    new-instance v0, Lch/boye/httpclientandroidlib/impl/client/ProxyAuthenticationStrategy;

    invoke-direct {v0}, Lch/boye/httpclientandroidlib/impl/client/ProxyAuthenticationStrategy;-><init>()V

    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/ProxyClient;->proxyAuthStrategy:Lch/boye/httpclientandroidlib/impl/client/ProxyAuthenticationStrategy;

    .line 102
    new-instance v0, Lch/boye/httpclientandroidlib/impl/client/HttpAuthenticator;

    invoke-direct {v0}, Lch/boye/httpclientandroidlib/impl/client/HttpAuthenticator;-><init>()V

    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/ProxyClient;->authenticator:Lch/boye/httpclientandroidlib/impl/client/HttpAuthenticator;

    .line 103
    new-instance v0, Lch/boye/httpclientandroidlib/auth/AuthState;

    invoke-direct {v0}, Lch/boye/httpclientandroidlib/auth/AuthState;-><init>()V

    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/ProxyClient;->proxyAuthState:Lch/boye/httpclientandroidlib/auth/AuthState;

    .line 104
    new-instance v0, Lch/boye/httpclientandroidlib/auth/AuthSchemeRegistry;

    invoke-direct {v0}, Lch/boye/httpclientandroidlib/auth/AuthSchemeRegistry;-><init>()V

    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/ProxyClient;->authSchemeRegistry:Lch/boye/httpclientandroidlib/auth/AuthSchemeRegistry;

    .line 105
    new-instance v1, Lch/boye/httpclientandroidlib/impl/auth/BasicSchemeFactory;

    invoke-direct {v1}, Lch/boye/httpclientandroidlib/impl/auth/BasicSchemeFactory;-><init>()V

    const-string v2, "Basic"

    invoke-virtual {v0, v2, v1}, Lch/boye/httpclientandroidlib/auth/AuthSchemeRegistry;->register(Ljava/lang/String;Lch/boye/httpclientandroidlib/auth/AuthSchemeFactory;)V

    .line 106
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/ProxyClient;->authSchemeRegistry:Lch/boye/httpclientandroidlib/auth/AuthSchemeRegistry;

    new-instance v1, Lch/boye/httpclientandroidlib/impl/auth/DigestSchemeFactory;

    invoke-direct {v1}, Lch/boye/httpclientandroidlib/impl/auth/DigestSchemeFactory;-><init>()V

    const-string v2, "Digest"

    invoke-virtual {v0, v2, v1}, Lch/boye/httpclientandroidlib/auth/AuthSchemeRegistry;->register(Ljava/lang/String;Lch/boye/httpclientandroidlib/auth/AuthSchemeFactory;)V

    .line 107
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/ProxyClient;->authSchemeRegistry:Lch/boye/httpclientandroidlib/auth/AuthSchemeRegistry;

    new-instance v1, Lch/boye/httpclientandroidlib/impl/auth/NTLMSchemeFactory;

    invoke-direct {v1}, Lch/boye/httpclientandroidlib/impl/auth/NTLMSchemeFactory;-><init>()V

    const-string v2, "NTLM"

    invoke-virtual {v0, v2, v1}, Lch/boye/httpclientandroidlib/auth/AuthSchemeRegistry;->register(Ljava/lang/String;Lch/boye/httpclientandroidlib/auth/AuthSchemeFactory;)V

    .line 110
    new-instance v0, Lch/boye/httpclientandroidlib/impl/DefaultConnectionReuseStrategy;

    invoke-direct {v0}, Lch/boye/httpclientandroidlib/impl/DefaultConnectionReuseStrategy;-><init>()V

    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/ProxyClient;->reuseStrategy:Lch/boye/httpclientandroidlib/ConnectionReuseStrategy;

    .line 111
    iput-object p1, p0, Lch/boye/httpclientandroidlib/impl/client/ProxyClient;->params:Lch/boye/httpclientandroidlib/params/HttpParams;

    return-void

    .line 91
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "HTTP parameters may not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getAuthSchemeRegistry()Lch/boye/httpclientandroidlib/auth/AuthSchemeRegistry;
    .locals 1

    .line 123
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/ProxyClient;->authSchemeRegistry:Lch/boye/httpclientandroidlib/auth/AuthSchemeRegistry;

    return-object v0
.end method

.method public getParams()Lch/boye/httpclientandroidlib/params/HttpParams;
    .locals 1

    .line 119
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/ProxyClient;->params:Lch/boye/httpclientandroidlib/params/HttpParams;

    return-object v0
.end method

.method public tunnel(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/auth/Credentials;)Ljava/net/Socket;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lch/boye/httpclientandroidlib/HttpException;
        }
    .end annotation

    .line 130
    new-instance v0, Lch/boye/httpclientandroidlib/impl/client/ProxyClient$ProxyConnection;

    new-instance v1, Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;

    invoke-direct {v1, p1}, Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;-><init>(Lch/boye/httpclientandroidlib/HttpHost;)V

    invoke-direct {v0, v1}, Lch/boye/httpclientandroidlib/impl/client/ProxyClient$ProxyConnection;-><init>(Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;)V

    .line 131
    new-instance v1, Lch/boye/httpclientandroidlib/protocol/BasicHttpContext;

    invoke-direct {v1}, Lch/boye/httpclientandroidlib/protocol/BasicHttpContext;-><init>()V

    .line 135
    :cond_0
    :goto_0
    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/impl/SocketHttpClientConnection;->isOpen()Z

    move-result v2

    if-nez v2, :cond_1

    .line 136
    new-instance v2, Ljava/net/Socket;

    invoke-virtual {p1}, Lch/boye/httpclientandroidlib/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lch/boye/httpclientandroidlib/HttpHost;->getPort()I

    move-result v4

    invoke-direct {v2, v3, v4}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V

    .line 137
    iget-object v3, p0, Lch/boye/httpclientandroidlib/impl/client/ProxyClient;->params:Lch/boye/httpclientandroidlib/params/HttpParams;

    invoke-virtual {v0, v2, v3}, Lch/boye/httpclientandroidlib/impl/DefaultHttpClientConnection;->bind(Ljava/net/Socket;Lch/boye/httpclientandroidlib/params/HttpParams;)V

    .line 139
    :cond_1
    invoke-virtual {p2}, Lch/boye/httpclientandroidlib/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v2

    .line 140
    invoke-virtual {p2}, Lch/boye/httpclientandroidlib/HttpHost;->getPort()I

    move-result v3

    if-gez v3, :cond_2

    const/16 v3, 0x50

    .line 145
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x6

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 146
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x3a

    .line 147
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 148
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 151
    iget-object v3, p0, Lch/boye/httpclientandroidlib/impl/client/ProxyClient;->params:Lch/boye/httpclientandroidlib/params/HttpParams;

    invoke-static {v3}, Lch/boye/httpclientandroidlib/params/HttpProtocolParams;->getVersion(Lch/boye/httpclientandroidlib/params/HttpParams;)Lch/boye/httpclientandroidlib/ProtocolVersion;

    move-result-object v3

    .line 152
    new-instance v4, Lch/boye/httpclientandroidlib/message/BasicHttpRequest;

    const-string v5, "CONNECT"

    invoke-direct {v4, v5, v2, v3}, Lch/boye/httpclientandroidlib/message/BasicHttpRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Lch/boye/httpclientandroidlib/ProtocolVersion;)V

    .line 153
    iget-object v2, p0, Lch/boye/httpclientandroidlib/impl/client/ProxyClient;->params:Lch/boye/httpclientandroidlib/params/HttpParams;

    invoke-interface {v4, v2}, Lch/boye/httpclientandroidlib/HttpMessage;->setParams(Lch/boye/httpclientandroidlib/params/HttpParams;)V

    .line 155
    new-instance v2, Lch/boye/httpclientandroidlib/impl/client/BasicCredentialsProvider;

    invoke-direct {v2}, Lch/boye/httpclientandroidlib/impl/client/BasicCredentialsProvider;-><init>()V

    .line 156
    new-instance v3, Lch/boye/httpclientandroidlib/auth/AuthScope;

    invoke-direct {v3, p1}, Lch/boye/httpclientandroidlib/auth/AuthScope;-><init>(Lch/boye/httpclientandroidlib/HttpHost;)V

    invoke-virtual {v2, v3, p3}, Lch/boye/httpclientandroidlib/impl/client/BasicCredentialsProvider;->setCredentials(Lch/boye/httpclientandroidlib/auth/AuthScope;Lch/boye/httpclientandroidlib/auth/Credentials;)V

    const-string v3, "http.target_host"

    .line 159
    invoke-interface {v1, v3, p2}, Lch/boye/httpclientandroidlib/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v3, "http.proxy_host"

    .line 160
    invoke-interface {v1, v3, p1}, Lch/boye/httpclientandroidlib/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v3, "http.connection"

    .line 161
    invoke-interface {v1, v3, v0}, Lch/boye/httpclientandroidlib/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v3, "http.request"

    .line 162
    invoke-interface {v1, v3, v4}, Lch/boye/httpclientandroidlib/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 163
    iget-object v3, p0, Lch/boye/httpclientandroidlib/impl/client/ProxyClient;->proxyAuthState:Lch/boye/httpclientandroidlib/auth/AuthState;

    const-string v5, "http.auth.proxy-scope"

    invoke-interface {v1, v5, v3}, Lch/boye/httpclientandroidlib/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v3, "http.auth.credentials-provider"

    .line 164
    invoke-interface {v1, v3, v2}, Lch/boye/httpclientandroidlib/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 165
    iget-object v2, p0, Lch/boye/httpclientandroidlib/impl/client/ProxyClient;->authSchemeRegistry:Lch/boye/httpclientandroidlib/auth/AuthSchemeRegistry;

    const-string v3, "http.authscheme-registry"

    invoke-interface {v1, v3, v2}, Lch/boye/httpclientandroidlib/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 167
    iget-object v2, p0, Lch/boye/httpclientandroidlib/impl/client/ProxyClient;->requestExec:Lch/boye/httpclientandroidlib/protocol/HttpRequestExecutor;

    iget-object v3, p0, Lch/boye/httpclientandroidlib/impl/client/ProxyClient;->httpProcessor:Lch/boye/httpclientandroidlib/protocol/HttpProcessor;

    invoke-virtual {v2, v4, v3, v1}, Lch/boye/httpclientandroidlib/protocol/HttpRequestExecutor;->preProcess(Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/protocol/HttpProcessor;Lch/boye/httpclientandroidlib/protocol/HttpContext;)V

    .line 169
    iget-object v2, p0, Lch/boye/httpclientandroidlib/impl/client/ProxyClient;->requestExec:Lch/boye/httpclientandroidlib/protocol/HttpRequestExecutor;

    invoke-virtual {v2, v4, v0, v1}, Lch/boye/httpclientandroidlib/protocol/HttpRequestExecutor;->execute(Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/HttpClientConnection;Lch/boye/httpclientandroidlib/protocol/HttpContext;)Lch/boye/httpclientandroidlib/HttpResponse;

    move-result-object v8

    .line 171
    iget-object v2, p0, Lch/boye/httpclientandroidlib/impl/client/ProxyClient;->params:Lch/boye/httpclientandroidlib/params/HttpParams;

    invoke-interface {v8, v2}, Lch/boye/httpclientandroidlib/HttpMessage;->setParams(Lch/boye/httpclientandroidlib/params/HttpParams;)V

    .line 172
    iget-object v2, p0, Lch/boye/httpclientandroidlib/impl/client/ProxyClient;->requestExec:Lch/boye/httpclientandroidlib/protocol/HttpRequestExecutor;

    iget-object v3, p0, Lch/boye/httpclientandroidlib/impl/client/ProxyClient;->httpProcessor:Lch/boye/httpclientandroidlib/protocol/HttpProcessor;

    invoke-virtual {v2, v8, v3, v1}, Lch/boye/httpclientandroidlib/protocol/HttpRequestExecutor;->postProcess(Lch/boye/httpclientandroidlib/HttpResponse;Lch/boye/httpclientandroidlib/protocol/HttpProcessor;Lch/boye/httpclientandroidlib/protocol/HttpContext;)V

    .line 174
    invoke-interface {v8}, Lch/boye/httpclientandroidlib/HttpResponse;->getStatusLine()Lch/boye/httpclientandroidlib/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lch/boye/httpclientandroidlib/StatusLine;->getStatusCode()I

    move-result v2

    const/16 v3, 0xc8

    if-lt v2, v3, :cond_7

    .line 180
    iget-object v2, p0, Lch/boye/httpclientandroidlib/impl/client/ProxyClient;->params:Lch/boye/httpclientandroidlib/params/HttpParams;

    invoke-static {v2}, Lch/boye/httpclientandroidlib/client/params/HttpClientParams;->isAuthenticating(Lch/boye/httpclientandroidlib/params/HttpParams;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 181
    iget-object v2, p0, Lch/boye/httpclientandroidlib/impl/client/ProxyClient;->authenticator:Lch/boye/httpclientandroidlib/impl/client/HttpAuthenticator;

    iget-object v5, p0, Lch/boye/httpclientandroidlib/impl/client/ProxyClient;->proxyAuthStrategy:Lch/boye/httpclientandroidlib/impl/client/ProxyAuthenticationStrategy;

    iget-object v6, p0, Lch/boye/httpclientandroidlib/impl/client/ProxyClient;->proxyAuthState:Lch/boye/httpclientandroidlib/auth/AuthState;

    move-object v3, p1

    move-object v4, v8

    move-object v7, v1

    invoke-virtual/range {v2 .. v7}, Lch/boye/httpclientandroidlib/impl/client/HttpAuthenticator;->isAuthenticationRequested(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpResponse;Lch/boye/httpclientandroidlib/client/AuthenticationStrategy;Lch/boye/httpclientandroidlib/auth/AuthState;Lch/boye/httpclientandroidlib/protocol/HttpContext;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 183
    iget-object v2, p0, Lch/boye/httpclientandroidlib/impl/client/ProxyClient;->authenticator:Lch/boye/httpclientandroidlib/impl/client/HttpAuthenticator;

    iget-object v5, p0, Lch/boye/httpclientandroidlib/impl/client/ProxyClient;->proxyAuthStrategy:Lch/boye/httpclientandroidlib/impl/client/ProxyAuthenticationStrategy;

    iget-object v6, p0, Lch/boye/httpclientandroidlib/impl/client/ProxyClient;->proxyAuthState:Lch/boye/httpclientandroidlib/auth/AuthState;

    move-object v3, p1

    move-object v4, v8

    move-object v7, v1

    invoke-virtual/range {v2 .. v7}, Lch/boye/httpclientandroidlib/impl/client/HttpAuthenticator;->authenticate(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpResponse;Lch/boye/httpclientandroidlib/client/AuthenticationStrategy;Lch/boye/httpclientandroidlib/auth/AuthState;Lch/boye/httpclientandroidlib/protocol/HttpContext;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 186
    iget-object v2, p0, Lch/boye/httpclientandroidlib/impl/client/ProxyClient;->reuseStrategy:Lch/boye/httpclientandroidlib/ConnectionReuseStrategy;

    invoke-interface {v2, v8, v1}, Lch/boye/httpclientandroidlib/ConnectionReuseStrategy;->keepAlive(Lch/boye/httpclientandroidlib/HttpResponse;Lch/boye/httpclientandroidlib/protocol/HttpContext;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 188
    invoke-interface {v8}, Lch/boye/httpclientandroidlib/HttpResponse;->getEntity()Lch/boye/httpclientandroidlib/HttpEntity;

    move-result-object v2

    .line 189
    invoke-static {v2}, Lch/boye/httpclientandroidlib/util/EntityUtils;->consume(Lch/boye/httpclientandroidlib/HttpEntity;)V

    goto/16 :goto_0

    .line 191
    :cond_3
    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/impl/SocketHttpClientConnection;->close()V

    goto/16 :goto_0

    .line 202
    :cond_4
    invoke-interface {v8}, Lch/boye/httpclientandroidlib/HttpResponse;->getStatusLine()Lch/boye/httpclientandroidlib/StatusLine;

    move-result-object p1

    invoke-interface {p1}, Lch/boye/httpclientandroidlib/StatusLine;->getStatusCode()I

    move-result p1

    const/16 p2, 0x12b

    if-le p1, p2, :cond_6

    .line 207
    invoke-interface {v8}, Lch/boye/httpclientandroidlib/HttpResponse;->getEntity()Lch/boye/httpclientandroidlib/HttpEntity;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 209
    new-instance p2, Lch/boye/httpclientandroidlib/entity/BufferedHttpEntity;

    invoke-direct {p2, p1}, Lch/boye/httpclientandroidlib/entity/BufferedHttpEntity;-><init>(Lch/boye/httpclientandroidlib/HttpEntity;)V

    invoke-interface {v8, p2}, Lch/boye/httpclientandroidlib/HttpResponse;->setEntity(Lch/boye/httpclientandroidlib/HttpEntity;)V

    .line 212
    :cond_5
    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/impl/SocketHttpClientConnection;->close()V

    .line 213
    new-instance p1, Lch/boye/httpclientandroidlib/impl/client/TunnelRefusedException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "CONNECT refused by proxy: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v8}, Lch/boye/httpclientandroidlib/HttpResponse;->getStatusLine()Lch/boye/httpclientandroidlib/StatusLine;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, v8}, Lch/boye/httpclientandroidlib/impl/client/TunnelRefusedException;-><init>(Ljava/lang/String;Lch/boye/httpclientandroidlib/HttpResponse;)V

    throw p1

    .line 216
    :cond_6
    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/impl/client/ProxyClient$ProxyConnection;->getSocket()Ljava/net/Socket;

    move-result-object p1

    return-object p1

    .line 176
    :cond_7
    new-instance p1, Lch/boye/httpclientandroidlib/HttpException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unexpected response to CONNECT request: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v8}, Lch/boye/httpclientandroidlib/HttpResponse;->getStatusLine()Lch/boye/httpclientandroidlib/StatusLine;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lch/boye/httpclientandroidlib/HttpException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.class public abstract Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;
.super Ljava/lang/Object;
.source "AbstractHttpClient.java"

# interfaces
.implements Lch/boye/httpclientandroidlib/client/HttpClient;


# annotations
.annotation build Lch/boye/httpclientandroidlib/annotation/ThreadSafe;
.end annotation


# instance fields
.field private backoffManager:Lch/boye/httpclientandroidlib/client/BackoffManager;
    .annotation build Lch/boye/httpclientandroidlib/annotation/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private connManager:Lch/boye/httpclientandroidlib/conn/ClientConnectionManager;
    .annotation build Lch/boye/httpclientandroidlib/annotation/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private connectionBackoffStrategy:Lch/boye/httpclientandroidlib/client/ConnectionBackoffStrategy;
    .annotation build Lch/boye/httpclientandroidlib/annotation/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private cookieStore:Lch/boye/httpclientandroidlib/client/CookieStore;
    .annotation build Lch/boye/httpclientandroidlib/annotation/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private credsProvider:Lch/boye/httpclientandroidlib/client/CredentialsProvider;
    .annotation build Lch/boye/httpclientandroidlib/annotation/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private defaultParams:Lch/boye/httpclientandroidlib/params/HttpParams;
    .annotation build Lch/boye/httpclientandroidlib/annotation/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private keepAliveStrategy:Lch/boye/httpclientandroidlib/conn/ConnectionKeepAliveStrategy;
    .annotation build Lch/boye/httpclientandroidlib/annotation/GuardedBy;
        value = "this"
    .end annotation
.end field

.field public log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

.field private mutableProcessor:Lch/boye/httpclientandroidlib/protocol/BasicHttpProcessor;
    .annotation build Lch/boye/httpclientandroidlib/annotation/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private protocolProcessor:Lch/boye/httpclientandroidlib/protocol/ImmutableHttpProcessor;
    .annotation build Lch/boye/httpclientandroidlib/annotation/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private proxyAuthStrategy:Lch/boye/httpclientandroidlib/client/AuthenticationStrategy;
    .annotation build Lch/boye/httpclientandroidlib/annotation/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private redirectStrategy:Lch/boye/httpclientandroidlib/client/RedirectStrategy;
    .annotation build Lch/boye/httpclientandroidlib/annotation/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private requestExec:Lch/boye/httpclientandroidlib/protocol/HttpRequestExecutor;
    .annotation build Lch/boye/httpclientandroidlib/annotation/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private retryHandler:Lch/boye/httpclientandroidlib/client/HttpRequestRetryHandler;
    .annotation build Lch/boye/httpclientandroidlib/annotation/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private reuseStrategy:Lch/boye/httpclientandroidlib/ConnectionReuseStrategy;
    .annotation build Lch/boye/httpclientandroidlib/annotation/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private routePlanner:Lch/boye/httpclientandroidlib/conn/routing/HttpRoutePlanner;
    .annotation build Lch/boye/httpclientandroidlib/annotation/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private supportedAuthSchemes:Lch/boye/httpclientandroidlib/auth/AuthSchemeRegistry;
    .annotation build Lch/boye/httpclientandroidlib/annotation/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private supportedCookieSpecs:Lch/boye/httpclientandroidlib/cookie/CookieSpecRegistry;
    .annotation build Lch/boye/httpclientandroidlib/annotation/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private targetAuthStrategy:Lch/boye/httpclientandroidlib/client/AuthenticationStrategy;
    .annotation build Lch/boye/httpclientandroidlib/annotation/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private userTokenHandler:Lch/boye/httpclientandroidlib/client/UserTokenHandler;
    .annotation build Lch/boye/httpclientandroidlib/annotation/GuardedBy;
        value = "this"
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lch/boye/httpclientandroidlib/conn/ClientConnectionManager;Lch/boye/httpclientandroidlib/params/HttpParams;)V
    .locals 2

    .line 272
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 187
    new-instance v0, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, v1}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    .line 273
    iput-object p2, p0, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->defaultParams:Lch/boye/httpclientandroidlib/params/HttpParams;

    .line 274
    iput-object p1, p0, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->connManager:Lch/boye/httpclientandroidlib/conn/ClientConnectionManager;

    return-void
.end method

.method private static determineTarget(Lch/boye/httpclientandroidlib/client/methods/HttpUriRequest;)Lch/boye/httpclientandroidlib/HttpHost;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lch/boye/httpclientandroidlib/client/ClientProtocolException;
        }
    .end annotation

    .line 809
    invoke-interface {p0}, Lch/boye/httpclientandroidlib/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object p0

    .line 810
    invoke-virtual {p0}, Ljava/net/URI;->isAbsolute()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 811
    invoke-static {p0}, Lch/boye/httpclientandroidlib/client/utils/URIUtils;->extractHost(Ljava/net/URI;)Lch/boye/httpclientandroidlib/HttpHost;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 813
    :cond_0
    new-instance v0, Lch/boye/httpclientandroidlib/client/ClientProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "URI does not specify a valid host name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lch/boye/httpclientandroidlib/client/ClientProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private final declared-synchronized getProtocolProcessor()Lch/boye/httpclientandroidlib/protocol/HttpProcessor;
    .locals 6

    monitor-enter p0

    .line 702
    :try_start_0
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->protocolProcessor:Lch/boye/httpclientandroidlib/protocol/ImmutableHttpProcessor;

    if-nez v0, :cond_2

    .line 704
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->getHttpProcessor()Lch/boye/httpclientandroidlib/protocol/BasicHttpProcessor;

    move-result-object v0

    .line 706
    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/protocol/BasicHttpProcessor;->getRequestInterceptorCount()I

    move-result v1

    .line 707
    new-array v2, v1, [Lch/boye/httpclientandroidlib/HttpRequestInterceptor;

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_0

    .line 709
    invoke-virtual {v0, v4}, Lch/boye/httpclientandroidlib/protocol/BasicHttpProcessor;->getRequestInterceptor(I)Lch/boye/httpclientandroidlib/HttpRequestInterceptor;

    move-result-object v5

    aput-object v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 711
    :cond_0
    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/protocol/BasicHttpProcessor;->getResponseInterceptorCount()I

    move-result v1

    .line 712
    new-array v4, v1, [Lch/boye/httpclientandroidlib/HttpResponseInterceptor;

    :goto_1
    if-ge v3, v1, :cond_1

    .line 714
    invoke-virtual {v0, v3}, Lch/boye/httpclientandroidlib/protocol/BasicHttpProcessor;->getResponseInterceptor(I)Lch/boye/httpclientandroidlib/HttpResponseInterceptor;

    move-result-object v5

    aput-object v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 716
    :cond_1
    new-instance v0, Lch/boye/httpclientandroidlib/protocol/ImmutableHttpProcessor;

    invoke-direct {v0, v2, v4}, Lch/boye/httpclientandroidlib/protocol/ImmutableHttpProcessor;-><init>([Lch/boye/httpclientandroidlib/HttpRequestInterceptor;[Lch/boye/httpclientandroidlib/HttpResponseInterceptor;)V

    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->protocolProcessor:Lch/boye/httpclientandroidlib/protocol/ImmutableHttpProcessor;

    .line 718
    :cond_2
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->protocolProcessor:Lch/boye/httpclientandroidlib/protocol/ImmutableHttpProcessor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method


# virtual methods
.method public declared-synchronized addRequestInterceptor(Lch/boye/httpclientandroidlib/HttpRequestInterceptor;)V
    .locals 1

    monitor-enter p0

    .line 758
    :try_start_0
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->getHttpProcessor()Lch/boye/httpclientandroidlib/protocol/BasicHttpProcessor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lch/boye/httpclientandroidlib/protocol/BasicHttpProcessor;->addInterceptor(Lch/boye/httpclientandroidlib/HttpRequestInterceptor;)V

    const/4 p1, 0x0

    .line 759
    iput-object p1, p0, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->protocolProcessor:Lch/boye/httpclientandroidlib/protocol/ImmutableHttpProcessor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 760
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized addRequestInterceptor(Lch/boye/httpclientandroidlib/HttpRequestInterceptor;I)V
    .locals 1

    monitor-enter p0

    .line 763
    :try_start_0
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->getHttpProcessor()Lch/boye/httpclientandroidlib/protocol/BasicHttpProcessor;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lch/boye/httpclientandroidlib/protocol/BasicHttpProcessor;->addInterceptor(Lch/boye/httpclientandroidlib/HttpRequestInterceptor;I)V

    const/4 p1, 0x0

    .line 764
    iput-object p1, p0, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->protocolProcessor:Lch/boye/httpclientandroidlib/protocol/ImmutableHttpProcessor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 765
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized addResponseInterceptor(Lch/boye/httpclientandroidlib/HttpResponseInterceptor;)V
    .locals 1

    monitor-enter p0

    .line 738
    :try_start_0
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->getHttpProcessor()Lch/boye/httpclientandroidlib/protocol/BasicHttpProcessor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lch/boye/httpclientandroidlib/protocol/BasicHttpProcessor;->addInterceptor(Lch/boye/httpclientandroidlib/HttpResponseInterceptor;)V

    const/4 p1, 0x0

    .line 739
    iput-object p1, p0, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->protocolProcessor:Lch/boye/httpclientandroidlib/protocol/ImmutableHttpProcessor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 740
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized addResponseInterceptor(Lch/boye/httpclientandroidlib/HttpResponseInterceptor;I)V
    .locals 1

    monitor-enter p0

    .line 743
    :try_start_0
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->getHttpProcessor()Lch/boye/httpclientandroidlib/protocol/BasicHttpProcessor;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lch/boye/httpclientandroidlib/protocol/BasicHttpProcessor;->addInterceptor(Lch/boye/httpclientandroidlib/HttpResponseInterceptor;I)V

    const/4 p1, 0x0

    .line 744
    iput-object p1, p0, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->protocolProcessor:Lch/boye/httpclientandroidlib/protocol/ImmutableHttpProcessor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 745
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized clearRequestInterceptors()V
    .locals 1

    monitor-enter p0

    .line 768
    :try_start_0
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->getHttpProcessor()Lch/boye/httpclientandroidlib/protocol/BasicHttpProcessor;

    move-result-object v0

    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/protocol/BasicHttpProcessor;->clearRequestInterceptors()V

    const/4 v0, 0x0

    .line 769
    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->protocolProcessor:Lch/boye/httpclientandroidlib/protocol/ImmutableHttpProcessor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 770
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized clearResponseInterceptors()V
    .locals 1

    monitor-enter p0

    .line 748
    :try_start_0
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->getHttpProcessor()Lch/boye/httpclientandroidlib/protocol/BasicHttpProcessor;

    move-result-object v0

    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/protocol/BasicHttpProcessor;->clearResponseInterceptors()V

    const/4 v0, 0x0

    .line 749
    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->protocolProcessor:Lch/boye/httpclientandroidlib/protocol/ImmutableHttpProcessor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 750
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected createAuthSchemeRegistry()Lch/boye/httpclientandroidlib/auth/AuthSchemeRegistry;
    .locals 3

    .line 338
    new-instance v0, Lch/boye/httpclientandroidlib/auth/AuthSchemeRegistry;

    invoke-direct {v0}, Lch/boye/httpclientandroidlib/auth/AuthSchemeRegistry;-><init>()V

    .line 339
    new-instance v1, Lch/boye/httpclientandroidlib/impl/auth/BasicSchemeFactory;

    invoke-direct {v1}, Lch/boye/httpclientandroidlib/impl/auth/BasicSchemeFactory;-><init>()V

    const-string v2, "Basic"

    invoke-virtual {v0, v2, v1}, Lch/boye/httpclientandroidlib/auth/AuthSchemeRegistry;->register(Ljava/lang/String;Lch/boye/httpclientandroidlib/auth/AuthSchemeFactory;)V

    .line 342
    new-instance v1, Lch/boye/httpclientandroidlib/impl/auth/DigestSchemeFactory;

    invoke-direct {v1}, Lch/boye/httpclientandroidlib/impl/auth/DigestSchemeFactory;-><init>()V

    const-string v2, "Digest"

    invoke-virtual {v0, v2, v1}, Lch/boye/httpclientandroidlib/auth/AuthSchemeRegistry;->register(Ljava/lang/String;Lch/boye/httpclientandroidlib/auth/AuthSchemeFactory;)V

    .line 345
    new-instance v1, Lch/boye/httpclientandroidlib/impl/auth/NTLMSchemeFactory;

    invoke-direct {v1}, Lch/boye/httpclientandroidlib/impl/auth/NTLMSchemeFactory;-><init>()V

    const-string v2, "NTLM"

    invoke-virtual {v0, v2, v1}, Lch/boye/httpclientandroidlib/auth/AuthSchemeRegistry;->register(Ljava/lang/String;Lch/boye/httpclientandroidlib/auth/AuthSchemeFactory;)V

    return-object v0
.end method

.method protected createClientConnectionManager()Lch/boye/httpclientandroidlib/conn/ClientConnectionManager;
    .locals 4

    .line 306
    invoke-static {}, Lch/boye/httpclientandroidlib/impl/conn/SchemeRegistryFactory;->createDefault()Lch/boye/httpclientandroidlib/conn/scheme/SchemeRegistry;

    move-result-object v0

    .line 309
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->getParams()Lch/boye/httpclientandroidlib/params/HttpParams;

    move-result-object v1

    const-string v2, "http.connection-manager.factory-class-name"

    .line 313
    invoke-interface {v1, v2}, Lch/boye/httpclientandroidlib/params/HttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 317
    :try_start_0
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 318
    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lch/boye/httpclientandroidlib/conn/ClientConnectionManagerFactory;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 324
    new-instance v1, Ljava/lang/InstantiationError;

    invoke-virtual {v0}, Ljava/lang/InstantiationException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/InstantiationError;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_1
    move-exception v0

    .line 322
    new-instance v1, Ljava/lang/IllegalAccessError;

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v1

    .line 320
    :catch_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid class name: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_1

    .line 328
    invoke-interface {v3, v1, v0}, Lch/boye/httpclientandroidlib/conn/ClientConnectionManagerFactory;->newInstance(Lch/boye/httpclientandroidlib/params/HttpParams;Lch/boye/httpclientandroidlib/conn/scheme/SchemeRegistry;)Lch/boye/httpclientandroidlib/conn/ClientConnectionManager;

    move-result-object v0

    goto :goto_1

    .line 330
    :cond_1
    new-instance v1, Lch/boye/httpclientandroidlib/impl/conn/BasicClientConnectionManager;

    invoke-direct {v1, v0}, Lch/boye/httpclientandroidlib/impl/conn/BasicClientConnectionManager;-><init>(Lch/boye/httpclientandroidlib/conn/scheme/SchemeRegistry;)V

    move-object v0, v1

    :goto_1
    return-object v0
.end method

.method protected createClientRequestDirector(Lch/boye/httpclientandroidlib/protocol/HttpRequestExecutor;Lch/boye/httpclientandroidlib/conn/ClientConnectionManager;Lch/boye/httpclientandroidlib/ConnectionReuseStrategy;Lch/boye/httpclientandroidlib/conn/ConnectionKeepAliveStrategy;Lch/boye/httpclientandroidlib/conn/routing/HttpRoutePlanner;Lch/boye/httpclientandroidlib/protocol/HttpProcessor;Lch/boye/httpclientandroidlib/client/HttpRequestRetryHandler;Lch/boye/httpclientandroidlib/client/RedirectHandler;Lch/boye/httpclientandroidlib/client/AuthenticationHandler;Lch/boye/httpclientandroidlib/client/AuthenticationHandler;Lch/boye/httpclientandroidlib/client/UserTokenHandler;Lch/boye/httpclientandroidlib/params/HttpParams;)Lch/boye/httpclientandroidlib/client/RequestDirector;
    .locals 14
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 926
    new-instance v13, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;

    move-object v0, v13

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    invoke-direct/range {v0 .. v12}, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;-><init>(Lch/boye/httpclientandroidlib/protocol/HttpRequestExecutor;Lch/boye/httpclientandroidlib/conn/ClientConnectionManager;Lch/boye/httpclientandroidlib/ConnectionReuseStrategy;Lch/boye/httpclientandroidlib/conn/ConnectionKeepAliveStrategy;Lch/boye/httpclientandroidlib/conn/routing/HttpRoutePlanner;Lch/boye/httpclientandroidlib/protocol/HttpProcessor;Lch/boye/httpclientandroidlib/client/HttpRequestRetryHandler;Lch/boye/httpclientandroidlib/client/RedirectHandler;Lch/boye/httpclientandroidlib/client/AuthenticationHandler;Lch/boye/httpclientandroidlib/client/AuthenticationHandler;Lch/boye/httpclientandroidlib/client/UserTokenHandler;Lch/boye/httpclientandroidlib/params/HttpParams;)V

    return-object v13
.end method

.method protected createClientRequestDirector(Lch/boye/httpclientandroidlib/protocol/HttpRequestExecutor;Lch/boye/httpclientandroidlib/conn/ClientConnectionManager;Lch/boye/httpclientandroidlib/ConnectionReuseStrategy;Lch/boye/httpclientandroidlib/conn/ConnectionKeepAliveStrategy;Lch/boye/httpclientandroidlib/conn/routing/HttpRoutePlanner;Lch/boye/httpclientandroidlib/protocol/HttpProcessor;Lch/boye/httpclientandroidlib/client/HttpRequestRetryHandler;Lch/boye/httpclientandroidlib/client/RedirectStrategy;Lch/boye/httpclientandroidlib/client/AuthenticationHandler;Lch/boye/httpclientandroidlib/client/AuthenticationHandler;Lch/boye/httpclientandroidlib/client/UserTokenHandler;Lch/boye/httpclientandroidlib/params/HttpParams;)Lch/boye/httpclientandroidlib/client/RequestDirector;
    .locals 16
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 958
    new-instance v14, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;

    move-object/from16 v15, p0

    iget-object v1, v15, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    move-object v0, v14

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    invoke-direct/range {v0 .. v13}, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;-><init>(Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;Lch/boye/httpclientandroidlib/protocol/HttpRequestExecutor;Lch/boye/httpclientandroidlib/conn/ClientConnectionManager;Lch/boye/httpclientandroidlib/ConnectionReuseStrategy;Lch/boye/httpclientandroidlib/conn/ConnectionKeepAliveStrategy;Lch/boye/httpclientandroidlib/conn/routing/HttpRoutePlanner;Lch/boye/httpclientandroidlib/protocol/HttpProcessor;Lch/boye/httpclientandroidlib/client/HttpRequestRetryHandler;Lch/boye/httpclientandroidlib/client/RedirectStrategy;Lch/boye/httpclientandroidlib/client/AuthenticationHandler;Lch/boye/httpclientandroidlib/client/AuthenticationHandler;Lch/boye/httpclientandroidlib/client/UserTokenHandler;Lch/boye/httpclientandroidlib/params/HttpParams;)V

    return-object v14
.end method

.method protected createClientRequestDirector(Lch/boye/httpclientandroidlib/protocol/HttpRequestExecutor;Lch/boye/httpclientandroidlib/conn/ClientConnectionManager;Lch/boye/httpclientandroidlib/ConnectionReuseStrategy;Lch/boye/httpclientandroidlib/conn/ConnectionKeepAliveStrategy;Lch/boye/httpclientandroidlib/conn/routing/HttpRoutePlanner;Lch/boye/httpclientandroidlib/protocol/HttpProcessor;Lch/boye/httpclientandroidlib/client/HttpRequestRetryHandler;Lch/boye/httpclientandroidlib/client/RedirectStrategy;Lch/boye/httpclientandroidlib/client/AuthenticationStrategy;Lch/boye/httpclientandroidlib/client/AuthenticationStrategy;Lch/boye/httpclientandroidlib/client/UserTokenHandler;Lch/boye/httpclientandroidlib/params/HttpParams;)Lch/boye/httpclientandroidlib/client/RequestDirector;
    .locals 16

    .line 991
    new-instance v14, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;

    move-object/from16 v15, p0

    iget-object v1, v15, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    move-object v0, v14

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    invoke-direct/range {v0 .. v13}, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;-><init>(Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;Lch/boye/httpclientandroidlib/protocol/HttpRequestExecutor;Lch/boye/httpclientandroidlib/conn/ClientConnectionManager;Lch/boye/httpclientandroidlib/ConnectionReuseStrategy;Lch/boye/httpclientandroidlib/conn/ConnectionKeepAliveStrategy;Lch/boye/httpclientandroidlib/conn/routing/HttpRoutePlanner;Lch/boye/httpclientandroidlib/protocol/HttpProcessor;Lch/boye/httpclientandroidlib/client/HttpRequestRetryHandler;Lch/boye/httpclientandroidlib/client/RedirectStrategy;Lch/boye/httpclientandroidlib/client/AuthenticationStrategy;Lch/boye/httpclientandroidlib/client/AuthenticationStrategy;Lch/boye/httpclientandroidlib/client/UserTokenHandler;Lch/boye/httpclientandroidlib/params/HttpParams;)V

    return-object v14
.end method

.method protected createConnectionKeepAliveStrategy()Lch/boye/httpclientandroidlib/conn/ConnectionKeepAliveStrategy;
    .locals 1

    .line 386
    new-instance v0, Lch/boye/httpclientandroidlib/impl/client/DefaultConnectionKeepAliveStrategy;

    invoke-direct {v0}, Lch/boye/httpclientandroidlib/impl/client/DefaultConnectionKeepAliveStrategy;-><init>()V

    return-object v0
.end method

.method protected createConnectionReuseStrategy()Lch/boye/httpclientandroidlib/ConnectionReuseStrategy;
    .locals 1

    .line 382
    new-instance v0, Lch/boye/httpclientandroidlib/impl/DefaultConnectionReuseStrategy;

    invoke-direct {v0}, Lch/boye/httpclientandroidlib/impl/DefaultConnectionReuseStrategy;-><init>()V

    return-object v0
.end method

.method protected createCookieSpecRegistry()Lch/boye/httpclientandroidlib/cookie/CookieSpecRegistry;
    .locals 3

    .line 355
    new-instance v0, Lch/boye/httpclientandroidlib/cookie/CookieSpecRegistry;

    invoke-direct {v0}, Lch/boye/httpclientandroidlib/cookie/CookieSpecRegistry;-><init>()V

    .line 356
    new-instance v1, Lch/boye/httpclientandroidlib/impl/cookie/BestMatchSpecFactory;

    invoke-direct {v1}, Lch/boye/httpclientandroidlib/impl/cookie/BestMatchSpecFactory;-><init>()V

    const-string v2, "best-match"

    invoke-virtual {v0, v2, v1}, Lch/boye/httpclientandroidlib/cookie/CookieSpecRegistry;->register(Ljava/lang/String;Lch/boye/httpclientandroidlib/cookie/CookieSpecFactory;)V

    .line 359
    new-instance v1, Lch/boye/httpclientandroidlib/impl/cookie/BrowserCompatSpecFactory;

    invoke-direct {v1}, Lch/boye/httpclientandroidlib/impl/cookie/BrowserCompatSpecFactory;-><init>()V

    const-string v2, "compatibility"

    invoke-virtual {v0, v2, v1}, Lch/boye/httpclientandroidlib/cookie/CookieSpecRegistry;->register(Ljava/lang/String;Lch/boye/httpclientandroidlib/cookie/CookieSpecFactory;)V

    .line 362
    new-instance v1, Lch/boye/httpclientandroidlib/impl/cookie/NetscapeDraftSpecFactory;

    invoke-direct {v1}, Lch/boye/httpclientandroidlib/impl/cookie/NetscapeDraftSpecFactory;-><init>()V

    const-string v2, "netscape"

    invoke-virtual {v0, v2, v1}, Lch/boye/httpclientandroidlib/cookie/CookieSpecRegistry;->register(Ljava/lang/String;Lch/boye/httpclientandroidlib/cookie/CookieSpecFactory;)V

    .line 365
    new-instance v1, Lch/boye/httpclientandroidlib/impl/cookie/RFC2109SpecFactory;

    invoke-direct {v1}, Lch/boye/httpclientandroidlib/impl/cookie/RFC2109SpecFactory;-><init>()V

    const-string v2, "rfc2109"

    invoke-virtual {v0, v2, v1}, Lch/boye/httpclientandroidlib/cookie/CookieSpecRegistry;->register(Ljava/lang/String;Lch/boye/httpclientandroidlib/cookie/CookieSpecFactory;)V

    .line 368
    new-instance v1, Lch/boye/httpclientandroidlib/impl/cookie/RFC2965SpecFactory;

    invoke-direct {v1}, Lch/boye/httpclientandroidlib/impl/cookie/RFC2965SpecFactory;-><init>()V

    const-string v2, "rfc2965"

    invoke-virtual {v0, v2, v1}, Lch/boye/httpclientandroidlib/cookie/CookieSpecRegistry;->register(Ljava/lang/String;Lch/boye/httpclientandroidlib/cookie/CookieSpecFactory;)V

    .line 371
    new-instance v1, Lch/boye/httpclientandroidlib/impl/cookie/IgnoreSpecFactory;

    invoke-direct {v1}, Lch/boye/httpclientandroidlib/impl/cookie/IgnoreSpecFactory;-><init>()V

    const-string v2, "ignoreCookies"

    invoke-virtual {v0, v2, v1}, Lch/boye/httpclientandroidlib/cookie/CookieSpecRegistry;->register(Ljava/lang/String;Lch/boye/httpclientandroidlib/cookie/CookieSpecFactory;)V

    return-object v0
.end method

.method protected createCookieStore()Lch/boye/httpclientandroidlib/client/CookieStore;
    .locals 1

    .line 426
    new-instance v0, Lch/boye/httpclientandroidlib/impl/client/BasicCookieStore;

    invoke-direct {v0}, Lch/boye/httpclientandroidlib/impl/client/BasicCookieStore;-><init>()V

    return-object v0
.end method

.method protected createCredentialsProvider()Lch/boye/httpclientandroidlib/client/CredentialsProvider;
    .locals 1

    .line 430
    new-instance v0, Lch/boye/httpclientandroidlib/impl/client/BasicCredentialsProvider;

    invoke-direct {v0}, Lch/boye/httpclientandroidlib/impl/client/BasicCredentialsProvider;-><init>()V

    return-object v0
.end method

.method protected createHttpContext()Lch/boye/httpclientandroidlib/protocol/HttpContext;
    .locals 3

    .line 285
    new-instance v0, Lch/boye/httpclientandroidlib/protocol/BasicHttpContext;

    invoke-direct {v0}, Lch/boye/httpclientandroidlib/protocol/BasicHttpContext;-><init>()V

    .line 286
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->getConnectionManager()Lch/boye/httpclientandroidlib/conn/ClientConnectionManager;

    move-result-object v1

    invoke-interface {v1}, Lch/boye/httpclientandroidlib/conn/ClientConnectionManager;->getSchemeRegistry()Lch/boye/httpclientandroidlib/conn/scheme/SchemeRegistry;

    move-result-object v1

    const-string v2, "http.scheme-registry"

    invoke-interface {v0, v2, v1}, Lch/boye/httpclientandroidlib/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 289
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->getAuthSchemes()Lch/boye/httpclientandroidlib/auth/AuthSchemeRegistry;

    move-result-object v1

    const-string v2, "http.authscheme-registry"

    invoke-interface {v0, v2, v1}, Lch/boye/httpclientandroidlib/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 292
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->getCookieSpecs()Lch/boye/httpclientandroidlib/cookie/CookieSpecRegistry;

    move-result-object v1

    const-string v2, "http.cookiespec-registry"

    invoke-interface {v0, v2, v1}, Lch/boye/httpclientandroidlib/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 295
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->getCookieStore()Lch/boye/httpclientandroidlib/client/CookieStore;

    move-result-object v1

    const-string v2, "http.cookie-store"

    invoke-interface {v0, v2, v1}, Lch/boye/httpclientandroidlib/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 298
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->getCredentialsProvider()Lch/boye/httpclientandroidlib/client/CredentialsProvider;

    move-result-object v1

    const-string v2, "http.auth.credentials-provider"

    invoke-interface {v0, v2, v1}, Lch/boye/httpclientandroidlib/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method protected abstract createHttpParams()Lch/boye/httpclientandroidlib/params/HttpParams;
.end method

.method protected abstract createHttpProcessor()Lch/boye/httpclientandroidlib/protocol/BasicHttpProcessor;
.end method

.method protected createHttpRequestRetryHandler()Lch/boye/httpclientandroidlib/client/HttpRequestRetryHandler;
    .locals 1

    .line 390
    new-instance v0, Lch/boye/httpclientandroidlib/impl/client/DefaultHttpRequestRetryHandler;

    invoke-direct {v0}, Lch/boye/httpclientandroidlib/impl/client/DefaultHttpRequestRetryHandler;-><init>()V

    return-object v0
.end method

.method protected createHttpRoutePlanner()Lch/boye/httpclientandroidlib/conn/routing/HttpRoutePlanner;
    .locals 2

    .line 434
    new-instance v0, Lch/boye/httpclientandroidlib/impl/conn/DefaultHttpRoutePlanner;

    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->getConnectionManager()Lch/boye/httpclientandroidlib/conn/ClientConnectionManager;

    move-result-object v1

    invoke-interface {v1}, Lch/boye/httpclientandroidlib/conn/ClientConnectionManager;->getSchemeRegistry()Lch/boye/httpclientandroidlib/conn/scheme/SchemeRegistry;

    move-result-object v1

    invoke-direct {v0, v1}, Lch/boye/httpclientandroidlib/impl/conn/DefaultHttpRoutePlanner;-><init>(Lch/boye/httpclientandroidlib/conn/scheme/SchemeRegistry;)V

    return-object v0
.end method

.method protected createProxyAuthenticationHandler()Lch/boye/httpclientandroidlib/client/AuthenticationHandler;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 422
    new-instance v0, Lch/boye/httpclientandroidlib/impl/client/DefaultProxyAuthenticationHandler;

    invoke-direct {v0}, Lch/boye/httpclientandroidlib/impl/client/DefaultProxyAuthenticationHandler;-><init>()V

    return-object v0
.end method

.method protected createProxyAuthenticationStrategy()Lch/boye/httpclientandroidlib/client/AuthenticationStrategy;
    .locals 1

    .line 414
    new-instance v0, Lch/boye/httpclientandroidlib/impl/client/ProxyAuthenticationStrategy;

    invoke-direct {v0}, Lch/boye/httpclientandroidlib/impl/client/ProxyAuthenticationStrategy;-><init>()V

    return-object v0
.end method

.method protected createRedirectHandler()Lch/boye/httpclientandroidlib/client/RedirectHandler;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 398
    new-instance v0, Lch/boye/httpclientandroidlib/impl/client/DefaultRedirectHandler;

    invoke-direct {v0}, Lch/boye/httpclientandroidlib/impl/client/DefaultRedirectHandler;-><init>()V

    return-object v0
.end method

.method protected createRequestExecutor()Lch/boye/httpclientandroidlib/protocol/HttpRequestExecutor;
    .locals 1

    .line 378
    new-instance v0, Lch/boye/httpclientandroidlib/protocol/HttpRequestExecutor;

    invoke-direct {v0}, Lch/boye/httpclientandroidlib/protocol/HttpRequestExecutor;-><init>()V

    return-object v0
.end method

.method protected createTargetAuthenticationHandler()Lch/boye/httpclientandroidlib/client/AuthenticationHandler;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 410
    new-instance v0, Lch/boye/httpclientandroidlib/impl/client/DefaultTargetAuthenticationHandler;

    invoke-direct {v0}, Lch/boye/httpclientandroidlib/impl/client/DefaultTargetAuthenticationHandler;-><init>()V

    return-object v0
.end method

.method protected createTargetAuthenticationStrategy()Lch/boye/httpclientandroidlib/client/AuthenticationStrategy;
    .locals 1

    .line 402
    new-instance v0, Lch/boye/httpclientandroidlib/impl/client/TargetAuthenticationStrategy;

    invoke-direct {v0}, Lch/boye/httpclientandroidlib/impl/client/TargetAuthenticationStrategy;-><init>()V

    return-object v0
.end method

.method protected createUserTokenHandler()Lch/boye/httpclientandroidlib/client/UserTokenHandler;
    .locals 1

    .line 438
    new-instance v0, Lch/boye/httpclientandroidlib/impl/client/DefaultUserTokenHandler;

    invoke-direct {v0}, Lch/boye/httpclientandroidlib/impl/client/DefaultUserTokenHandler;-><init>()V

    return-object v0
.end method

.method protected determineParams(Lch/boye/httpclientandroidlib/HttpRequest;)Lch/boye/httpclientandroidlib/params/HttpParams;
    .locals 3

    .line 1023
    new-instance v0, Lch/boye/httpclientandroidlib/impl/client/ClientParamsStack;

    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->getParams()Lch/boye/httpclientandroidlib/params/HttpParams;

    move-result-object v1

    invoke-interface {p1}, Lch/boye/httpclientandroidlib/HttpMessage;->getParams()Lch/boye/httpclientandroidlib/params/HttpParams;

    move-result-object p1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1, p1, v2}, Lch/boye/httpclientandroidlib/impl/client/ClientParamsStack;-><init>(Lch/boye/httpclientandroidlib/params/HttpParams;Lch/boye/httpclientandroidlib/params/HttpParams;Lch/boye/httpclientandroidlib/params/HttpParams;Lch/boye/httpclientandroidlib/params/HttpParams;)V

    return-object v0
.end method

.method public final execute(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpRequest;)Lch/boye/httpclientandroidlib/HttpResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lch/boye/httpclientandroidlib/client/ClientProtocolException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 823
    invoke-virtual {p0, p1, p2, v0}, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->execute(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/protocol/HttpContext;)Lch/boye/httpclientandroidlib/HttpResponse;

    move-result-object p1

    return-object p1
.end method

.method public final execute(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/protocol/HttpContext;)Lch/boye/httpclientandroidlib/HttpResponse;
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lch/boye/httpclientandroidlib/client/ClientProtocolException;
        }
    .end annotation

    move-object/from16 v14, p0

    move-object/from16 v0, p1

    move-object/from16 v15, p2

    move-object/from16 v1, p3

    if-eqz v15, :cond_8

    .line 845
    monitor-enter p0

    .line 847
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->createHttpContext()Lch/boye/httpclientandroidlib/protocol/HttpContext;

    move-result-object v2

    if-nez v1, :cond_0

    move-object v13, v2

    goto :goto_0

    .line 851
    :cond_0
    new-instance v3, Lch/boye/httpclientandroidlib/protocol/DefaultedHttpContext;

    invoke-direct {v3, v1, v2}, Lch/boye/httpclientandroidlib/protocol/DefaultedHttpContext;-><init>(Lch/boye/httpclientandroidlib/protocol/HttpContext;Lch/boye/httpclientandroidlib/protocol/HttpContext;)V

    move-object v13, v3

    .line 854
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->getRequestExecutor()Lch/boye/httpclientandroidlib/protocol/HttpRequestExecutor;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->getConnectionManager()Lch/boye/httpclientandroidlib/conn/ClientConnectionManager;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->getConnectionReuseStrategy()Lch/boye/httpclientandroidlib/ConnectionReuseStrategy;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->getConnectionKeepAliveStrategy()Lch/boye/httpclientandroidlib/conn/ConnectionKeepAliveStrategy;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->getRoutePlanner()Lch/boye/httpclientandroidlib/conn/routing/HttpRoutePlanner;

    move-result-object v6

    invoke-direct/range {p0 .. p0}, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->getProtocolProcessor()Lch/boye/httpclientandroidlib/protocol/HttpProcessor;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->getHttpRequestRetryHandler()Lch/boye/httpclientandroidlib/client/HttpRequestRetryHandler;

    move-result-object v8

    invoke-virtual/range {p0 .. p0}, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->getRedirectStrategy()Lch/boye/httpclientandroidlib/client/RedirectStrategy;

    move-result-object v9

    invoke-virtual/range {p0 .. p0}, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->getTargetAuthenticationStrategy()Lch/boye/httpclientandroidlib/client/AuthenticationStrategy;

    move-result-object v10

    invoke-virtual/range {p0 .. p0}, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->getProxyAuthenticationStrategy()Lch/boye/httpclientandroidlib/client/AuthenticationStrategy;

    move-result-object v11

    invoke-virtual/range {p0 .. p0}, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->getUserTokenHandler()Lch/boye/httpclientandroidlib/client/UserTokenHandler;

    move-result-object v12

    invoke-virtual {v14, v15}, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->determineParams(Lch/boye/httpclientandroidlib/HttpRequest;)Lch/boye/httpclientandroidlib/params/HttpParams;

    move-result-object v16

    move-object/from16 v1, p0

    move-object/from16 v17, v13

    move-object/from16 v13, v16

    invoke-virtual/range {v1 .. v13}, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->createClientRequestDirector(Lch/boye/httpclientandroidlib/protocol/HttpRequestExecutor;Lch/boye/httpclientandroidlib/conn/ClientConnectionManager;Lch/boye/httpclientandroidlib/ConnectionReuseStrategy;Lch/boye/httpclientandroidlib/conn/ConnectionKeepAliveStrategy;Lch/boye/httpclientandroidlib/conn/routing/HttpRoutePlanner;Lch/boye/httpclientandroidlib/protocol/HttpProcessor;Lch/boye/httpclientandroidlib/client/HttpRequestRetryHandler;Lch/boye/httpclientandroidlib/client/RedirectStrategy;Lch/boye/httpclientandroidlib/client/AuthenticationStrategy;Lch/boye/httpclientandroidlib/client/AuthenticationStrategy;Lch/boye/httpclientandroidlib/client/UserTokenHandler;Lch/boye/httpclientandroidlib/params/HttpParams;)Lch/boye/httpclientandroidlib/client/RequestDirector;

    move-result-object v1

    .line 867
    invoke-virtual/range {p0 .. p0}, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->getRoutePlanner()Lch/boye/httpclientandroidlib/conn/routing/HttpRoutePlanner;

    move-result-object v2

    .line 868
    invoke-virtual/range {p0 .. p0}, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->getConnectionBackoffStrategy()Lch/boye/httpclientandroidlib/client/ConnectionBackoffStrategy;

    move-result-object v3

    .line 869
    invoke-virtual/range {p0 .. p0}, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->getBackoffManager()Lch/boye/httpclientandroidlib/client/BackoffManager;

    move-result-object v4

    .line 870
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_7

    if-eqz v4, :cond_7

    if-eqz v0, :cond_1

    move-object v5, v0

    :goto_1
    move-object/from16 v6, v17

    goto :goto_2

    .line 874
    :cond_1
    :try_start_1
    invoke-virtual {v14, v15}, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->determineParams(Lch/boye/httpclientandroidlib/HttpRequest;)Lch/boye/httpclientandroidlib/params/HttpParams;

    move-result-object v5

    const-string v6, "http.default-host"

    invoke-interface {v5, v6}, Lch/boye/httpclientandroidlib/params/HttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lch/boye/httpclientandroidlib/HttpHost;

    goto :goto_1

    .line 877
    :goto_2
    invoke-interface {v2, v5, v15, v6}, Lch/boye/httpclientandroidlib/conn/routing/HttpRoutePlanner;->determineRoute(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/protocol/HttpContext;)Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;

    move-result-object v2
    :try_end_1
    .catch Lch/boye/httpclientandroidlib/HttpException; {:try_start_1 .. :try_end_1} :catch_2

    .line 881
    :try_start_2
    invoke-interface {v1, v0, v15, v6}, Lch/boye/httpclientandroidlib/client/RequestDirector;->execute(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/protocol/HttpContext;)Lch/boye/httpclientandroidlib/HttpResponse;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 895
    :try_start_3
    invoke-interface {v3, v0}, Lch/boye/httpclientandroidlib/client/ConnectionBackoffStrategy;->shouldBackoff(Lch/boye/httpclientandroidlib/HttpResponse;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 896
    invoke-interface {v4, v2}, Lch/boye/httpclientandroidlib/client/BackoffManager;->backOff(Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;)V

    goto :goto_3

    .line 898
    :cond_2
    invoke-interface {v4, v2}, Lch/boye/httpclientandroidlib/client/BackoffManager;->probe(Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;)V

    :goto_3
    return-object v0

    :catch_0
    move-exception v0

    move-object v1, v0

    .line 888
    invoke-interface {v3, v1}, Lch/boye/httpclientandroidlib/client/ConnectionBackoffStrategy;->shouldBackoff(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 889
    invoke-interface {v4, v2}, Lch/boye/httpclientandroidlib/client/BackoffManager;->backOff(Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;)V

    .line 891
    :cond_3
    instance-of v0, v1, Lch/boye/httpclientandroidlib/HttpException;

    if-nez v0, :cond_5

    .line 892
    instance-of v0, v1, Ljava/io/IOException;

    if-eqz v0, :cond_4

    move-object v0, v1

    check-cast v0, Ljava/io/IOException;

    throw v0

    .line 893
    :cond_4
    new-instance v0, Ljava/lang/reflect/UndeclaredThrowableException;

    invoke-direct {v0, v1}, Ljava/lang/reflect/UndeclaredThrowableException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 891
    :cond_5
    move-object v0, v1

    check-cast v0, Lch/boye/httpclientandroidlib/HttpException;

    throw v0

    :catch_1
    move-exception v0

    move-object v1, v0

    .line 883
    invoke-interface {v3, v1}, Lch/boye/httpclientandroidlib/client/ConnectionBackoffStrategy;->shouldBackoff(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 884
    invoke-interface {v4, v2}, Lch/boye/httpclientandroidlib/client/BackoffManager;->backOff(Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;)V

    .line 886
    :cond_6
    throw v1

    :cond_7
    move-object/from16 v6, v17

    .line 902
    invoke-interface {v1, v0, v15, v6}, Lch/boye/httpclientandroidlib/client/RequestDirector;->execute(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/protocol/HttpContext;)Lch/boye/httpclientandroidlib/HttpResponse;

    move-result-object v0
    :try_end_3
    .catch Lch/boye/httpclientandroidlib/HttpException; {:try_start_3 .. :try_end_3} :catch_2

    return-object v0

    :catch_2
    move-exception v0

    .line 905
    new-instance v1, Lch/boye/httpclientandroidlib/client/ClientProtocolException;

    invoke-direct {v1, v0}, Lch/boye/httpclientandroidlib/client/ClientProtocolException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catchall_0
    move-exception v0

    .line 870
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    .line 831
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Request must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :goto_4
    throw v0

    :goto_5
    goto :goto_4
.end method

.method public final execute(Lch/boye/httpclientandroidlib/client/methods/HttpUriRequest;)Lch/boye/httpclientandroidlib/HttpResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lch/boye/httpclientandroidlib/client/ClientProtocolException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 780
    invoke-virtual {p0, p1, v0}, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->execute(Lch/boye/httpclientandroidlib/client/methods/HttpUriRequest;Lch/boye/httpclientandroidlib/protocol/HttpContext;)Lch/boye/httpclientandroidlib/HttpResponse;

    move-result-object p1

    return-object p1
.end method

.method public final execute(Lch/boye/httpclientandroidlib/client/methods/HttpUriRequest;Lch/boye/httpclientandroidlib/protocol/HttpContext;)Lch/boye/httpclientandroidlib/HttpResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lch/boye/httpclientandroidlib/client/ClientProtocolException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 801
    invoke-static {p1}, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->determineTarget(Lch/boye/httpclientandroidlib/client/methods/HttpUriRequest;)Lch/boye/httpclientandroidlib/HttpHost;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->execute(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/protocol/HttpContext;)Lch/boye/httpclientandroidlib/HttpResponse;

    move-result-object p1

    return-object p1

    .line 797
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Request must not be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public execute(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/client/ResponseHandler;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lch/boye/httpclientandroidlib/HttpHost;",
            "Lch/boye/httpclientandroidlib/HttpRequest;",
            "Lch/boye/httpclientandroidlib/client/ResponseHandler<",
            "+TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lch/boye/httpclientandroidlib/client/ClientProtocolException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1048
    invoke-virtual {p0, p1, p2, p3, v0}, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->execute(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/client/ResponseHandler;Lch/boye/httpclientandroidlib/protocol/HttpContext;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public execute(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/client/ResponseHandler;Lch/boye/httpclientandroidlib/protocol/HttpContext;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lch/boye/httpclientandroidlib/HttpHost;",
            "Lch/boye/httpclientandroidlib/HttpRequest;",
            "Lch/boye/httpclientandroidlib/client/ResponseHandler<",
            "+TT;>;",
            "Lch/boye/httpclientandroidlib/protocol/HttpContext;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lch/boye/httpclientandroidlib/client/ClientProtocolException;
        }
    .end annotation

    if-eqz p3, :cond_2

    .line 1062
    invoke-virtual {p0, p1, p2, p4}, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->execute(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/protocol/HttpContext;)Lch/boye/httpclientandroidlib/HttpResponse;

    move-result-object p1

    .line 1066
    :try_start_0
    invoke-interface {p3, p1}, Lch/boye/httpclientandroidlib/client/ResponseHandler;->handleResponse(Lch/boye/httpclientandroidlib/HttpResponse;)Ljava/lang/Object;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1087
    invoke-interface {p1}, Lch/boye/httpclientandroidlib/HttpResponse;->getEntity()Lch/boye/httpclientandroidlib/HttpEntity;

    move-result-object p1

    .line 1088
    invoke-static {p1}, Lch/boye/httpclientandroidlib/util/EntityUtils;->consume(Lch/boye/httpclientandroidlib/HttpEntity;)V

    return-object p2

    :catch_0
    move-exception p2

    .line 1068
    invoke-interface {p1}, Lch/boye/httpclientandroidlib/HttpResponse;->getEntity()Lch/boye/httpclientandroidlib/HttpEntity;

    move-result-object p1

    .line 1070
    :try_start_1
    invoke-static {p1}, Lch/boye/httpclientandroidlib/util/EntityUtils;->consume(Lch/boye/httpclientandroidlib/HttpEntity;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 1074
    iget-object p3, p0, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    const-string p4, "Error consuming content after an exception."

    invoke-virtual {p3, p4, p1}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1076
    :goto_0
    instance-of p1, p2, Ljava/lang/RuntimeException;

    if-nez p1, :cond_1

    .line 1079
    instance-of p1, p2, Ljava/io/IOException;

    if-eqz p1, :cond_0

    .line 1080
    check-cast p2, Ljava/io/IOException;

    throw p2

    .line 1082
    :cond_0
    new-instance p1, Ljava/lang/reflect/UndeclaredThrowableException;

    invoke-direct {p1, p2}, Ljava/lang/reflect/UndeclaredThrowableException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 1077
    :cond_1
    check-cast p2, Ljava/lang/RuntimeException;

    throw p2

    .line 1058
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Response handler must not be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public execute(Lch/boye/httpclientandroidlib/client/methods/HttpUriRequest;Lch/boye/httpclientandroidlib/client/ResponseHandler;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lch/boye/httpclientandroidlib/client/methods/HttpUriRequest;",
            "Lch/boye/httpclientandroidlib/client/ResponseHandler<",
            "+TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lch/boye/httpclientandroidlib/client/ClientProtocolException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1031
    invoke-virtual {p0, p1, p2, v0}, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->execute(Lch/boye/httpclientandroidlib/client/methods/HttpUriRequest;Lch/boye/httpclientandroidlib/client/ResponseHandler;Lch/boye/httpclientandroidlib/protocol/HttpContext;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public execute(Lch/boye/httpclientandroidlib/client/methods/HttpUriRequest;Lch/boye/httpclientandroidlib/client/ResponseHandler;Lch/boye/httpclientandroidlib/protocol/HttpContext;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lch/boye/httpclientandroidlib/client/methods/HttpUriRequest;",
            "Lch/boye/httpclientandroidlib/client/ResponseHandler<",
            "+TT;>;",
            "Lch/boye/httpclientandroidlib/protocol/HttpContext;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lch/boye/httpclientandroidlib/client/ClientProtocolException;
        }
    .end annotation

    .line 1039
    invoke-static {p1}, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->determineTarget(Lch/boye/httpclientandroidlib/client/methods/HttpUriRequest;)Lch/boye/httpclientandroidlib/HttpHost;

    move-result-object v0

    .line 1040
    invoke-virtual {p0, v0, p1, p2, p3}, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->execute(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/client/ResponseHandler;Lch/boye/httpclientandroidlib/protocol/HttpContext;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final declared-synchronized getAuthSchemes()Lch/boye/httpclientandroidlib/auth/AuthSchemeRegistry;
    .locals 1

    monitor-enter p0

    .line 477
    :try_start_0
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->supportedAuthSchemes:Lch/boye/httpclientandroidlib/auth/AuthSchemeRegistry;

    if-nez v0, :cond_0

    .line 478
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->createAuthSchemeRegistry()Lch/boye/httpclientandroidlib/auth/AuthSchemeRegistry;

    move-result-object v0

    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->supportedAuthSchemes:Lch/boye/httpclientandroidlib/auth/AuthSchemeRegistry;

    .line 480
    :cond_0
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->supportedAuthSchemes:Lch/boye/httpclientandroidlib/auth/AuthSchemeRegistry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getBackoffManager()Lch/boye/httpclientandroidlib/client/BackoffManager;
    .locals 1

    monitor-enter p0

    .line 503
    :try_start_0
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->backoffManager:Lch/boye/httpclientandroidlib/client/BackoffManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getConnectionBackoffStrategy()Lch/boye/httpclientandroidlib/client/ConnectionBackoffStrategy;
    .locals 1

    monitor-enter p0

    .line 488
    :try_start_0
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->connectionBackoffStrategy:Lch/boye/httpclientandroidlib/client/ConnectionBackoffStrategy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getConnectionKeepAliveStrategy()Lch/boye/httpclientandroidlib/conn/ConnectionKeepAliveStrategy;
    .locals 1

    monitor-enter p0

    .line 528
    :try_start_0
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->keepAliveStrategy:Lch/boye/httpclientandroidlib/conn/ConnectionKeepAliveStrategy;

    if-nez v0, :cond_0

    .line 529
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->createConnectionKeepAliveStrategy()Lch/boye/httpclientandroidlib/conn/ConnectionKeepAliveStrategy;

    move-result-object v0

    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->keepAliveStrategy:Lch/boye/httpclientandroidlib/conn/ConnectionKeepAliveStrategy;

    .line 531
    :cond_0
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->keepAliveStrategy:Lch/boye/httpclientandroidlib/conn/ConnectionKeepAliveStrategy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getConnectionManager()Lch/boye/httpclientandroidlib/conn/ClientConnectionManager;
    .locals 1

    monitor-enter p0

    .line 461
    :try_start_0
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->connManager:Lch/boye/httpclientandroidlib/conn/ClientConnectionManager;

    if-nez v0, :cond_0

    .line 462
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->createClientConnectionManager()Lch/boye/httpclientandroidlib/conn/ClientConnectionManager;

    move-result-object v0

    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->connManager:Lch/boye/httpclientandroidlib/conn/ClientConnectionManager;

    .line 464
    :cond_0
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->connManager:Lch/boye/httpclientandroidlib/conn/ClientConnectionManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getConnectionReuseStrategy()Lch/boye/httpclientandroidlib/ConnectionReuseStrategy;
    .locals 1

    monitor-enter p0

    .line 515
    :try_start_0
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->reuseStrategy:Lch/boye/httpclientandroidlib/ConnectionReuseStrategy;

    if-nez v0, :cond_0

    .line 516
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->createConnectionReuseStrategy()Lch/boye/httpclientandroidlib/ConnectionReuseStrategy;

    move-result-object v0

    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->reuseStrategy:Lch/boye/httpclientandroidlib/ConnectionReuseStrategy;

    .line 518
    :cond_0
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->reuseStrategy:Lch/boye/httpclientandroidlib/ConnectionReuseStrategy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getCookieSpecs()Lch/boye/httpclientandroidlib/cookie/CookieSpecRegistry;
    .locals 1

    monitor-enter p0

    .line 496
    :try_start_0
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->supportedCookieSpecs:Lch/boye/httpclientandroidlib/cookie/CookieSpecRegistry;

    if-nez v0, :cond_0

    .line 497
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->createCookieSpecRegistry()Lch/boye/httpclientandroidlib/cookie/CookieSpecRegistry;

    move-result-object v0

    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->supportedCookieSpecs:Lch/boye/httpclientandroidlib/cookie/CookieSpecRegistry;

    .line 499
    :cond_0
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->supportedCookieSpecs:Lch/boye/httpclientandroidlib/cookie/CookieSpecRegistry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getCookieStore()Lch/boye/httpclientandroidlib/client/CookieStore;
    .locals 1

    monitor-enter p0

    .line 651
    :try_start_0
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->cookieStore:Lch/boye/httpclientandroidlib/client/CookieStore;

    if-nez v0, :cond_0

    .line 652
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->createCookieStore()Lch/boye/httpclientandroidlib/client/CookieStore;

    move-result-object v0

    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->cookieStore:Lch/boye/httpclientandroidlib/client/CookieStore;

    .line 654
    :cond_0
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->cookieStore:Lch/boye/httpclientandroidlib/client/CookieStore;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getCredentialsProvider()Lch/boye/httpclientandroidlib/client/CredentialsProvider;
    .locals 1

    monitor-enter p0

    .line 662
    :try_start_0
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->credsProvider:Lch/boye/httpclientandroidlib/client/CredentialsProvider;

    if-nez v0, :cond_0

    .line 663
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->createCredentialsProvider()Lch/boye/httpclientandroidlib/client/CredentialsProvider;

    move-result-object v0

    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->credsProvider:Lch/boye/httpclientandroidlib/client/CredentialsProvider;

    .line 665
    :cond_0
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->credsProvider:Lch/boye/httpclientandroidlib/client/CredentialsProvider;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected final declared-synchronized getHttpProcessor()Lch/boye/httpclientandroidlib/protocol/BasicHttpProcessor;
    .locals 1

    monitor-enter p0

    .line 695
    :try_start_0
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->mutableProcessor:Lch/boye/httpclientandroidlib/protocol/BasicHttpProcessor;

    if-nez v0, :cond_0

    .line 696
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->createHttpProcessor()Lch/boye/httpclientandroidlib/protocol/BasicHttpProcessor;

    move-result-object v0

    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->mutableProcessor:Lch/boye/httpclientandroidlib/protocol/BasicHttpProcessor;

    .line 698
    :cond_0
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->mutableProcessor:Lch/boye/httpclientandroidlib/protocol/BasicHttpProcessor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getHttpRequestRetryHandler()Lch/boye/httpclientandroidlib/client/HttpRequestRetryHandler;
    .locals 1

    monitor-enter p0

    .line 541
    :try_start_0
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->retryHandler:Lch/boye/httpclientandroidlib/client/HttpRequestRetryHandler;

    if-nez v0, :cond_0

    .line 542
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->createHttpRequestRetryHandler()Lch/boye/httpclientandroidlib/client/HttpRequestRetryHandler;

    move-result-object v0

    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->retryHandler:Lch/boye/httpclientandroidlib/client/HttpRequestRetryHandler;

    .line 544
    :cond_0
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->retryHandler:Lch/boye/httpclientandroidlib/client/HttpRequestRetryHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getParams()Lch/boye/httpclientandroidlib/params/HttpParams;
    .locals 1

    monitor-enter p0

    .line 443
    :try_start_0
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->defaultParams:Lch/boye/httpclientandroidlib/params/HttpParams;

    if-nez v0, :cond_0

    .line 444
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->createHttpParams()Lch/boye/httpclientandroidlib/params/HttpParams;

    move-result-object v0

    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->defaultParams:Lch/boye/httpclientandroidlib/params/HttpParams;

    .line 446
    :cond_0
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->defaultParams:Lch/boye/httpclientandroidlib/params/HttpParams;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getProxyAuthenticationHandler()Lch/boye/httpclientandroidlib/client/AuthenticationHandler;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    monitor-enter p0

    .line 622
    :try_start_0
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->createProxyAuthenticationHandler()Lch/boye/httpclientandroidlib/client/AuthenticationHandler;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getProxyAuthenticationStrategy()Lch/boye/httpclientandroidlib/client/AuthenticationStrategy;
    .locals 1

    monitor-enter p0

    .line 637
    :try_start_0
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->proxyAuthStrategy:Lch/boye/httpclientandroidlib/client/AuthenticationStrategy;

    if-nez v0, :cond_0

    .line 638
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->createProxyAuthenticationStrategy()Lch/boye/httpclientandroidlib/client/AuthenticationStrategy;

    move-result-object v0

    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->proxyAuthStrategy:Lch/boye/httpclientandroidlib/client/AuthenticationStrategy;

    .line 640
    :cond_0
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->proxyAuthStrategy:Lch/boye/httpclientandroidlib/client/AuthenticationStrategy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getRedirectHandler()Lch/boye/httpclientandroidlib/client/RedirectHandler;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    monitor-enter p0

    .line 556
    :try_start_0
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->createRedirectHandler()Lch/boye/httpclientandroidlib/client/RedirectHandler;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getRedirectStrategy()Lch/boye/httpclientandroidlib/client/RedirectStrategy;
    .locals 1

    monitor-enter p0

    .line 571
    :try_start_0
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->redirectStrategy:Lch/boye/httpclientandroidlib/client/RedirectStrategy;

    if-nez v0, :cond_0

    .line 572
    new-instance v0, Lch/boye/httpclientandroidlib/impl/client/DefaultRedirectStrategy;

    invoke-direct {v0}, Lch/boye/httpclientandroidlib/impl/client/DefaultRedirectStrategy;-><init>()V

    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->redirectStrategy:Lch/boye/httpclientandroidlib/client/RedirectStrategy;

    .line 574
    :cond_0
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->redirectStrategy:Lch/boye/httpclientandroidlib/client/RedirectStrategy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getRequestExecutor()Lch/boye/httpclientandroidlib/protocol/HttpRequestExecutor;
    .locals 1

    monitor-enter p0

    .line 469
    :try_start_0
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->requestExec:Lch/boye/httpclientandroidlib/protocol/HttpRequestExecutor;

    if-nez v0, :cond_0

    .line 470
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->createRequestExecutor()Lch/boye/httpclientandroidlib/protocol/HttpRequestExecutor;

    move-result-object v0

    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->requestExec:Lch/boye/httpclientandroidlib/protocol/HttpRequestExecutor;

    .line 472
    :cond_0
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->requestExec:Lch/boye/httpclientandroidlib/protocol/HttpRequestExecutor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getRequestInterceptor(I)Lch/boye/httpclientandroidlib/HttpRequestInterceptor;
    .locals 1

    monitor-enter p0

    .line 730
    :try_start_0
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->getHttpProcessor()Lch/boye/httpclientandroidlib/protocol/BasicHttpProcessor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lch/boye/httpclientandroidlib/protocol/BasicHttpProcessor;->getRequestInterceptor(I)Lch/boye/httpclientandroidlib/HttpRequestInterceptor;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getRequestInterceptorCount()I
    .locals 1

    monitor-enter p0

    .line 734
    :try_start_0
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->getHttpProcessor()Lch/boye/httpclientandroidlib/protocol/BasicHttpProcessor;

    move-result-object v0

    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/protocol/BasicHttpProcessor;->getRequestInterceptorCount()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getResponseInterceptor(I)Lch/boye/httpclientandroidlib/HttpResponseInterceptor;
    .locals 1

    monitor-enter p0

    .line 726
    :try_start_0
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->getHttpProcessor()Lch/boye/httpclientandroidlib/protocol/BasicHttpProcessor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lch/boye/httpclientandroidlib/protocol/BasicHttpProcessor;->getResponseInterceptor(I)Lch/boye/httpclientandroidlib/HttpResponseInterceptor;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getResponseInterceptorCount()I
    .locals 1

    monitor-enter p0

    .line 722
    :try_start_0
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->getHttpProcessor()Lch/boye/httpclientandroidlib/protocol/BasicHttpProcessor;

    move-result-object v0

    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/protocol/BasicHttpProcessor;->getResponseInterceptorCount()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getRoutePlanner()Lch/boye/httpclientandroidlib/conn/routing/HttpRoutePlanner;
    .locals 1

    monitor-enter p0

    .line 673
    :try_start_0
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->routePlanner:Lch/boye/httpclientandroidlib/conn/routing/HttpRoutePlanner;

    if-nez v0, :cond_0

    .line 674
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->createHttpRoutePlanner()Lch/boye/httpclientandroidlib/conn/routing/HttpRoutePlanner;

    move-result-object v0

    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->routePlanner:Lch/boye/httpclientandroidlib/conn/routing/HttpRoutePlanner;

    .line 676
    :cond_0
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->routePlanner:Lch/boye/httpclientandroidlib/conn/routing/HttpRoutePlanner;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getTargetAuthenticationHandler()Lch/boye/httpclientandroidlib/client/AuthenticationHandler;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    monitor-enter p0

    .line 589
    :try_start_0
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->createTargetAuthenticationHandler()Lch/boye/httpclientandroidlib/client/AuthenticationHandler;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getTargetAuthenticationStrategy()Lch/boye/httpclientandroidlib/client/AuthenticationStrategy;
    .locals 1

    monitor-enter p0

    .line 604
    :try_start_0
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->targetAuthStrategy:Lch/boye/httpclientandroidlib/client/AuthenticationStrategy;

    if-nez v0, :cond_0

    .line 605
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->createTargetAuthenticationStrategy()Lch/boye/httpclientandroidlib/client/AuthenticationStrategy;

    move-result-object v0

    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->targetAuthStrategy:Lch/boye/httpclientandroidlib/client/AuthenticationStrategy;

    .line 607
    :cond_0
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->targetAuthStrategy:Lch/boye/httpclientandroidlib/client/AuthenticationStrategy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getUserTokenHandler()Lch/boye/httpclientandroidlib/client/UserTokenHandler;
    .locals 1

    monitor-enter p0

    .line 684
    :try_start_0
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->userTokenHandler:Lch/boye/httpclientandroidlib/client/UserTokenHandler;

    if-nez v0, :cond_0

    .line 685
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->createUserTokenHandler()Lch/boye/httpclientandroidlib/client/UserTokenHandler;

    move-result-object v0

    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->userTokenHandler:Lch/boye/httpclientandroidlib/client/UserTokenHandler;

    .line 687
    :cond_0
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->userTokenHandler:Lch/boye/httpclientandroidlib/client/UserTokenHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized removeRequestInterceptorByClass(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lch/boye/httpclientandroidlib/HttpRequestInterceptor;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 773
    :try_start_0
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->getHttpProcessor()Lch/boye/httpclientandroidlib/protocol/BasicHttpProcessor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lch/boye/httpclientandroidlib/protocol/BasicHttpProcessor;->removeRequestInterceptorByClass(Ljava/lang/Class;)V

    const/4 p1, 0x0

    .line 774
    iput-object p1, p0, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->protocolProcessor:Lch/boye/httpclientandroidlib/protocol/ImmutableHttpProcessor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 775
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized removeResponseInterceptorByClass(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lch/boye/httpclientandroidlib/HttpResponseInterceptor;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 753
    :try_start_0
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->getHttpProcessor()Lch/boye/httpclientandroidlib/protocol/BasicHttpProcessor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lch/boye/httpclientandroidlib/protocol/BasicHttpProcessor;->removeResponseInterceptorByClass(Ljava/lang/Class;)V

    const/4 p1, 0x0

    .line 754
    iput-object p1, p0, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->protocolProcessor:Lch/boye/httpclientandroidlib/protocol/ImmutableHttpProcessor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 755
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setAuthSchemes(Lch/boye/httpclientandroidlib/auth/AuthSchemeRegistry;)V
    .locals 0

    monitor-enter p0

    .line 484
    :try_start_0
    iput-object p1, p0, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->supportedAuthSchemes:Lch/boye/httpclientandroidlib/auth/AuthSchemeRegistry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 485
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setBackoffManager(Lch/boye/httpclientandroidlib/client/BackoffManager;)V
    .locals 0

    monitor-enter p0

    .line 507
    :try_start_0
    iput-object p1, p0, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->backoffManager:Lch/boye/httpclientandroidlib/client/BackoffManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 508
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setConnectionBackoffStrategy(Lch/boye/httpclientandroidlib/client/ConnectionBackoffStrategy;)V
    .locals 0

    monitor-enter p0

    .line 492
    :try_start_0
    iput-object p1, p0, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->connectionBackoffStrategy:Lch/boye/httpclientandroidlib/client/ConnectionBackoffStrategy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 493
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setCookieSpecs(Lch/boye/httpclientandroidlib/cookie/CookieSpecRegistry;)V
    .locals 0

    monitor-enter p0

    .line 511
    :try_start_0
    iput-object p1, p0, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->supportedCookieSpecs:Lch/boye/httpclientandroidlib/cookie/CookieSpecRegistry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 512
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setCookieStore(Lch/boye/httpclientandroidlib/client/CookieStore;)V
    .locals 0

    monitor-enter p0

    .line 658
    :try_start_0
    iput-object p1, p0, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->cookieStore:Lch/boye/httpclientandroidlib/client/CookieStore;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 659
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setCredentialsProvider(Lch/boye/httpclientandroidlib/client/CredentialsProvider;)V
    .locals 0

    monitor-enter p0

    .line 669
    :try_start_0
    iput-object p1, p0, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->credsProvider:Lch/boye/httpclientandroidlib/client/CredentialsProvider;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 670
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setHttpRequestRetryHandler(Lch/boye/httpclientandroidlib/client/HttpRequestRetryHandler;)V
    .locals 0

    monitor-enter p0

    .line 548
    :try_start_0
    iput-object p1, p0, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->retryHandler:Lch/boye/httpclientandroidlib/client/HttpRequestRetryHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 549
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setKeepAliveStrategy(Lch/boye/httpclientandroidlib/conn/ConnectionKeepAliveStrategy;)V
    .locals 0

    monitor-enter p0

    .line 536
    :try_start_0
    iput-object p1, p0, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->keepAliveStrategy:Lch/boye/httpclientandroidlib/conn/ConnectionKeepAliveStrategy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 537
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setParams(Lch/boye/httpclientandroidlib/params/HttpParams;)V
    .locals 0

    monitor-enter p0

    .line 456
    :try_start_0
    iput-object p1, p0, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->defaultParams:Lch/boye/httpclientandroidlib/params/HttpParams;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 457
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setProxyAuthenticationHandler(Lch/boye/httpclientandroidlib/client/AuthenticationHandler;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    monitor-enter p0

    .line 630
    :try_start_0
    new-instance v0, Lch/boye/httpclientandroidlib/impl/client/AuthenticationStrategyAdaptor;

    invoke-direct {v0, p1}, Lch/boye/httpclientandroidlib/impl/client/AuthenticationStrategyAdaptor;-><init>(Lch/boye/httpclientandroidlib/client/AuthenticationHandler;)V

    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->proxyAuthStrategy:Lch/boye/httpclientandroidlib/client/AuthenticationStrategy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 631
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setProxyAuthenticationStrategy(Lch/boye/httpclientandroidlib/client/AuthenticationStrategy;)V
    .locals 0

    monitor-enter p0

    .line 647
    :try_start_0
    iput-object p1, p0, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->proxyAuthStrategy:Lch/boye/httpclientandroidlib/client/AuthenticationStrategy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 648
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setRedirectHandler(Lch/boye/httpclientandroidlib/client/RedirectHandler;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    monitor-enter p0

    .line 564
    :try_start_0
    new-instance v0, Lch/boye/httpclientandroidlib/impl/client/DefaultRedirectStrategyAdaptor;

    invoke-direct {v0, p1}, Lch/boye/httpclientandroidlib/impl/client/DefaultRedirectStrategyAdaptor;-><init>(Lch/boye/httpclientandroidlib/client/RedirectHandler;)V

    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->redirectStrategy:Lch/boye/httpclientandroidlib/client/RedirectStrategy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 565
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setRedirectStrategy(Lch/boye/httpclientandroidlib/client/RedirectStrategy;)V
    .locals 0

    monitor-enter p0

    .line 581
    :try_start_0
    iput-object p1, p0, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->redirectStrategy:Lch/boye/httpclientandroidlib/client/RedirectStrategy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 582
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setReuseStrategy(Lch/boye/httpclientandroidlib/ConnectionReuseStrategy;)V
    .locals 0

    monitor-enter p0

    .line 523
    :try_start_0
    iput-object p1, p0, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->reuseStrategy:Lch/boye/httpclientandroidlib/ConnectionReuseStrategy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 524
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setRoutePlanner(Lch/boye/httpclientandroidlib/conn/routing/HttpRoutePlanner;)V
    .locals 0

    monitor-enter p0

    .line 680
    :try_start_0
    iput-object p1, p0, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->routePlanner:Lch/boye/httpclientandroidlib/conn/routing/HttpRoutePlanner;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 681
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setTargetAuthenticationHandler(Lch/boye/httpclientandroidlib/client/AuthenticationHandler;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    monitor-enter p0

    .line 597
    :try_start_0
    new-instance v0, Lch/boye/httpclientandroidlib/impl/client/AuthenticationStrategyAdaptor;

    invoke-direct {v0, p1}, Lch/boye/httpclientandroidlib/impl/client/AuthenticationStrategyAdaptor;-><init>(Lch/boye/httpclientandroidlib/client/AuthenticationHandler;)V

    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->targetAuthStrategy:Lch/boye/httpclientandroidlib/client/AuthenticationStrategy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 598
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setTargetAuthenticationStrategy(Lch/boye/httpclientandroidlib/client/AuthenticationStrategy;)V
    .locals 0

    monitor-enter p0

    .line 614
    :try_start_0
    iput-object p1, p0, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->targetAuthStrategy:Lch/boye/httpclientandroidlib/client/AuthenticationStrategy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 615
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setUserTokenHandler(Lch/boye/httpclientandroidlib/client/UserTokenHandler;)V
    .locals 0

    monitor-enter p0

    .line 691
    :try_start_0
    iput-object p1, p0, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->userTokenHandler:Lch/boye/httpclientandroidlib/client/UserTokenHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 692
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

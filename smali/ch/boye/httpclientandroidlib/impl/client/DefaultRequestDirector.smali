.class public Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;
.super Ljava/lang/Object;
.source "DefaultRequestDirector.java"

# interfaces
.implements Lch/boye/httpclientandroidlib/client/RequestDirector;


# annotations
.annotation build Lch/boye/httpclientandroidlib/annotation/NotThreadSafe;
.end annotation


# instance fields
.field private final authenticator:Lch/boye/httpclientandroidlib/impl/client/HttpAuthenticator;

.field protected final connManager:Lch/boye/httpclientandroidlib/conn/ClientConnectionManager;

.field private execCount:I

.field protected final httpProcessor:Lch/boye/httpclientandroidlib/protocol/HttpProcessor;

.field protected final keepAliveStrategy:Lch/boye/httpclientandroidlib/conn/ConnectionKeepAliveStrategy;

.field public log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

.field protected managedConn:Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;

.field private maxRedirects:I

.field protected final params:Lch/boye/httpclientandroidlib/params/HttpParams;

.field protected final proxyAuthHandler:Lch/boye/httpclientandroidlib/client/AuthenticationHandler;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field protected final proxyAuthState:Lch/boye/httpclientandroidlib/auth/AuthState;

.field protected final proxyAuthStrategy:Lch/boye/httpclientandroidlib/client/AuthenticationStrategy;

.field private redirectCount:I

.field protected final redirectHandler:Lch/boye/httpclientandroidlib/client/RedirectHandler;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field protected final redirectStrategy:Lch/boye/httpclientandroidlib/client/RedirectStrategy;

.field protected final requestExec:Lch/boye/httpclientandroidlib/protocol/HttpRequestExecutor;

.field protected final retryHandler:Lch/boye/httpclientandroidlib/client/HttpRequestRetryHandler;

.field protected final reuseStrategy:Lch/boye/httpclientandroidlib/ConnectionReuseStrategy;

.field protected final routePlanner:Lch/boye/httpclientandroidlib/conn/routing/HttpRoutePlanner;

.field protected final targetAuthHandler:Lch/boye/httpclientandroidlib/client/AuthenticationHandler;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field protected final targetAuthState:Lch/boye/httpclientandroidlib/auth/AuthState;

.field protected final targetAuthStrategy:Lch/boye/httpclientandroidlib/client/AuthenticationStrategy;

.field protected final userTokenHandler:Lch/boye/httpclientandroidlib/client/UserTokenHandler;

.field private virtualHost:Lch/boye/httpclientandroidlib/HttpHost;


# direct methods
.method public constructor <init>(Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;Lch/boye/httpclientandroidlib/protocol/HttpRequestExecutor;Lch/boye/httpclientandroidlib/conn/ClientConnectionManager;Lch/boye/httpclientandroidlib/ConnectionReuseStrategy;Lch/boye/httpclientandroidlib/conn/ConnectionKeepAliveStrategy;Lch/boye/httpclientandroidlib/conn/routing/HttpRoutePlanner;Lch/boye/httpclientandroidlib/protocol/HttpProcessor;Lch/boye/httpclientandroidlib/client/HttpRequestRetryHandler;Lch/boye/httpclientandroidlib/client/RedirectStrategy;Lch/boye/httpclientandroidlib/client/AuthenticationHandler;Lch/boye/httpclientandroidlib/client/AuthenticationHandler;Lch/boye/httpclientandroidlib/client/UserTokenHandler;Lch/boye/httpclientandroidlib/params/HttpParams;)V
    .locals 14
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 240
    new-instance v1, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    const-class v0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;

    invoke-direct {v1, v0}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;-><init>(Ljava/lang/Object;)V

    new-instance v10, Lch/boye/httpclientandroidlib/impl/client/AuthenticationStrategyAdaptor;

    move-object/from16 v0, p10

    invoke-direct {v10, v0}, Lch/boye/httpclientandroidlib/impl/client/AuthenticationStrategyAdaptor;-><init>(Lch/boye/httpclientandroidlib/client/AuthenticationHandler;)V

    new-instance v11, Lch/boye/httpclientandroidlib/impl/client/AuthenticationStrategyAdaptor;

    move-object/from16 v0, p11

    invoke-direct {v11, v0}, Lch/boye/httpclientandroidlib/impl/client/AuthenticationStrategyAdaptor;-><init>(Lch/boye/httpclientandroidlib/client/AuthenticationHandler;)V

    move-object v0, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v12, p12

    move-object/from16 v13, p13

    invoke-direct/range {v0 .. v13}, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;-><init>(Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;Lch/boye/httpclientandroidlib/protocol/HttpRequestExecutor;Lch/boye/httpclientandroidlib/conn/ClientConnectionManager;Lch/boye/httpclientandroidlib/ConnectionReuseStrategy;Lch/boye/httpclientandroidlib/conn/ConnectionKeepAliveStrategy;Lch/boye/httpclientandroidlib/conn/routing/HttpRoutePlanner;Lch/boye/httpclientandroidlib/protocol/HttpProcessor;Lch/boye/httpclientandroidlib/client/HttpRequestRetryHandler;Lch/boye/httpclientandroidlib/client/RedirectStrategy;Lch/boye/httpclientandroidlib/client/AuthenticationStrategy;Lch/boye/httpclientandroidlib/client/AuthenticationStrategy;Lch/boye/httpclientandroidlib/client/UserTokenHandler;Lch/boye/httpclientandroidlib/params/HttpParams;)V

    return-void
.end method

.method public constructor <init>(Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;Lch/boye/httpclientandroidlib/protocol/HttpRequestExecutor;Lch/boye/httpclientandroidlib/conn/ClientConnectionManager;Lch/boye/httpclientandroidlib/ConnectionReuseStrategy;Lch/boye/httpclientandroidlib/conn/ConnectionKeepAliveStrategy;Lch/boye/httpclientandroidlib/conn/routing/HttpRoutePlanner;Lch/boye/httpclientandroidlib/protocol/HttpProcessor;Lch/boye/httpclientandroidlib/client/HttpRequestRetryHandler;Lch/boye/httpclientandroidlib/client/RedirectStrategy;Lch/boye/httpclientandroidlib/client/AuthenticationStrategy;Lch/boye/httpclientandroidlib/client/AuthenticationStrategy;Lch/boye/httpclientandroidlib/client/UserTokenHandler;Lch/boye/httpclientandroidlib/params/HttpParams;)V
    .locals 1

    .line 265
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_f

    if-eqz p2, :cond_e

    if-eqz p3, :cond_d

    if-eqz p4, :cond_c

    if-eqz p5, :cond_b

    if-eqz p6, :cond_a

    if-eqz p7, :cond_9

    if-eqz p8, :cond_8

    if-eqz p9, :cond_7

    if-eqz p10, :cond_6

    if-eqz p11, :cond_5

    if-eqz p12, :cond_4

    if-eqz p13, :cond_3

    .line 319
    iput-object p1, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    .line 320
    new-instance v0, Lch/boye/httpclientandroidlib/impl/client/HttpAuthenticator;

    invoke-direct {v0, p1}, Lch/boye/httpclientandroidlib/impl/client/HttpAuthenticator;-><init>(Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;)V

    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->authenticator:Lch/boye/httpclientandroidlib/impl/client/HttpAuthenticator;

    .line 321
    iput-object p2, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->requestExec:Lch/boye/httpclientandroidlib/protocol/HttpRequestExecutor;

    .line 322
    iput-object p3, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->connManager:Lch/boye/httpclientandroidlib/conn/ClientConnectionManager;

    .line 323
    iput-object p4, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->reuseStrategy:Lch/boye/httpclientandroidlib/ConnectionReuseStrategy;

    .line 324
    iput-object p5, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->keepAliveStrategy:Lch/boye/httpclientandroidlib/conn/ConnectionKeepAliveStrategy;

    .line 325
    iput-object p6, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->routePlanner:Lch/boye/httpclientandroidlib/conn/routing/HttpRoutePlanner;

    .line 326
    iput-object p7, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->httpProcessor:Lch/boye/httpclientandroidlib/protocol/HttpProcessor;

    .line 327
    iput-object p8, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->retryHandler:Lch/boye/httpclientandroidlib/client/HttpRequestRetryHandler;

    .line 328
    iput-object p9, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->redirectStrategy:Lch/boye/httpclientandroidlib/client/RedirectStrategy;

    .line 329
    iput-object p10, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->targetAuthStrategy:Lch/boye/httpclientandroidlib/client/AuthenticationStrategy;

    .line 330
    iput-object p11, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->proxyAuthStrategy:Lch/boye/httpclientandroidlib/client/AuthenticationStrategy;

    .line 331
    iput-object p12, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->userTokenHandler:Lch/boye/httpclientandroidlib/client/UserTokenHandler;

    .line 332
    iput-object p13, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->params:Lch/boye/httpclientandroidlib/params/HttpParams;

    .line 334
    instance-of p1, p9, Lch/boye/httpclientandroidlib/impl/client/DefaultRedirectStrategyAdaptor;

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    .line 335
    check-cast p9, Lch/boye/httpclientandroidlib/impl/client/DefaultRedirectStrategyAdaptor;

    invoke-virtual {p9}, Lch/boye/httpclientandroidlib/impl/client/DefaultRedirectStrategyAdaptor;->getHandler()Lch/boye/httpclientandroidlib/client/RedirectHandler;

    move-result-object p1

    iput-object p1, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->redirectHandler:Lch/boye/httpclientandroidlib/client/RedirectHandler;

    goto :goto_0

    .line 337
    :cond_0
    iput-object p2, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->redirectHandler:Lch/boye/httpclientandroidlib/client/RedirectHandler;

    .line 339
    :goto_0
    instance-of p1, p10, Lch/boye/httpclientandroidlib/impl/client/AuthenticationStrategyAdaptor;

    if-eqz p1, :cond_1

    .line 340
    check-cast p10, Lch/boye/httpclientandroidlib/impl/client/AuthenticationStrategyAdaptor;

    invoke-virtual {p10}, Lch/boye/httpclientandroidlib/impl/client/AuthenticationStrategyAdaptor;->getHandler()Lch/boye/httpclientandroidlib/client/AuthenticationHandler;

    move-result-object p1

    iput-object p1, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->targetAuthHandler:Lch/boye/httpclientandroidlib/client/AuthenticationHandler;

    goto :goto_1

    .line 342
    :cond_1
    iput-object p2, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->targetAuthHandler:Lch/boye/httpclientandroidlib/client/AuthenticationHandler;

    .line 344
    :goto_1
    instance-of p1, p11, Lch/boye/httpclientandroidlib/impl/client/AuthenticationStrategyAdaptor;

    if-eqz p1, :cond_2

    .line 345
    check-cast p11, Lch/boye/httpclientandroidlib/impl/client/AuthenticationStrategyAdaptor;

    invoke-virtual {p11}, Lch/boye/httpclientandroidlib/impl/client/AuthenticationStrategyAdaptor;->getHandler()Lch/boye/httpclientandroidlib/client/AuthenticationHandler;

    move-result-object p1

    iput-object p1, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->proxyAuthHandler:Lch/boye/httpclientandroidlib/client/AuthenticationHandler;

    goto :goto_2

    .line 347
    :cond_2
    iput-object p2, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->proxyAuthHandler:Lch/boye/httpclientandroidlib/client/AuthenticationHandler;

    .line 350
    :goto_2
    iput-object p2, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->managedConn:Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;

    const/4 p1, 0x0

    .line 352
    iput p1, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->execCount:I

    .line 353
    iput p1, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->redirectCount:I

    .line 354
    new-instance p1, Lch/boye/httpclientandroidlib/auth/AuthState;

    invoke-direct {p1}, Lch/boye/httpclientandroidlib/auth/AuthState;-><init>()V

    iput-object p1, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->targetAuthState:Lch/boye/httpclientandroidlib/auth/AuthState;

    .line 355
    new-instance p1, Lch/boye/httpclientandroidlib/auth/AuthState;

    invoke-direct {p1}, Lch/boye/httpclientandroidlib/auth/AuthState;-><init>()V

    iput-object p1, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->proxyAuthState:Lch/boye/httpclientandroidlib/auth/AuthState;

    .line 356
    iget-object p1, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->params:Lch/boye/httpclientandroidlib/params/HttpParams;

    const/16 p2, 0x64

    const-string p3, "http.protocol.max-redirects"

    invoke-interface {p1, p3, p2}, Lch/boye/httpclientandroidlib/params/HttpParams;->getIntParameter(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->maxRedirects:I

    return-void

    .line 316
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "HTTP parameters may not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 312
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "User token handler may not be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 308
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Proxy authentication strategy may not be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 304
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Target authentication strategy may not be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 300
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Redirect strategy may not be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 296
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "HTTP request retry handler may not be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 292
    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "HTTP protocol processor may not be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 288
    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Route planner may not be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 284
    :cond_b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Connection keep alive strategy may not be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 280
    :cond_c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Connection reuse strategy may not be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 276
    :cond_d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Client connection manager may not be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 272
    :cond_e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Request executor may not be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 268
    :cond_f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Log may not be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lch/boye/httpclientandroidlib/protocol/HttpRequestExecutor;Lch/boye/httpclientandroidlib/conn/ClientConnectionManager;Lch/boye/httpclientandroidlib/ConnectionReuseStrategy;Lch/boye/httpclientandroidlib/conn/ConnectionKeepAliveStrategy;Lch/boye/httpclientandroidlib/conn/routing/HttpRoutePlanner;Lch/boye/httpclientandroidlib/protocol/HttpProcessor;Lch/boye/httpclientandroidlib/client/HttpRequestRetryHandler;Lch/boye/httpclientandroidlib/client/RedirectHandler;Lch/boye/httpclientandroidlib/client/AuthenticationHandler;Lch/boye/httpclientandroidlib/client/AuthenticationHandler;Lch/boye/httpclientandroidlib/client/UserTokenHandler;Lch/boye/httpclientandroidlib/params/HttpParams;)V
    .locals 14
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 215
    new-instance v1, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    const-class v0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;

    invoke-direct {v1, v0}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;-><init>(Ljava/lang/Object;)V

    new-instance v9, Lch/boye/httpclientandroidlib/impl/client/DefaultRedirectStrategyAdaptor;

    move-object/from16 v0, p8

    invoke-direct {v9, v0}, Lch/boye/httpclientandroidlib/impl/client/DefaultRedirectStrategyAdaptor;-><init>(Lch/boye/httpclientandroidlib/client/RedirectHandler;)V

    new-instance v10, Lch/boye/httpclientandroidlib/impl/client/AuthenticationStrategyAdaptor;

    move-object/from16 v0, p9

    invoke-direct {v10, v0}, Lch/boye/httpclientandroidlib/impl/client/AuthenticationStrategyAdaptor;-><init>(Lch/boye/httpclientandroidlib/client/AuthenticationHandler;)V

    new-instance v11, Lch/boye/httpclientandroidlib/impl/client/AuthenticationStrategyAdaptor;

    move-object/from16 v0, p10

    invoke-direct {v11, v0}, Lch/boye/httpclientandroidlib/impl/client/AuthenticationStrategyAdaptor;-><init>(Lch/boye/httpclientandroidlib/client/AuthenticationHandler;)V

    move-object v0, p0

    move-object v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    invoke-direct/range {v0 .. v13}, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;-><init>(Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;Lch/boye/httpclientandroidlib/protocol/HttpRequestExecutor;Lch/boye/httpclientandroidlib/conn/ClientConnectionManager;Lch/boye/httpclientandroidlib/ConnectionReuseStrategy;Lch/boye/httpclientandroidlib/conn/ConnectionKeepAliveStrategy;Lch/boye/httpclientandroidlib/conn/routing/HttpRoutePlanner;Lch/boye/httpclientandroidlib/protocol/HttpProcessor;Lch/boye/httpclientandroidlib/client/HttpRequestRetryHandler;Lch/boye/httpclientandroidlib/client/RedirectStrategy;Lch/boye/httpclientandroidlib/client/AuthenticationStrategy;Lch/boye/httpclientandroidlib/client/AuthenticationStrategy;Lch/boye/httpclientandroidlib/client/UserTokenHandler;Lch/boye/httpclientandroidlib/params/HttpParams;)V

    return-void
.end method

.method private abortConnection()V
    .locals 4

    .line 1151
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->managedConn:Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 1155
    iput-object v1, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->managedConn:Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;

    .line 1157
    :try_start_0
    invoke-interface {v0}, Lch/boye/httpclientandroidlib/conn/ConnectionReleaseTrigger;->abortConnection()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 1159
    iget-object v2, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    invoke-virtual {v2}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1160
    iget-object v2, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1165
    :cond_0
    :goto_0
    :try_start_1
    invoke-interface {v0}, Lch/boye/httpclientandroidlib/conn/ConnectionReleaseTrigger;->releaseConnection()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 1167
    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    const-string v2, "Error releasing connection"

    invoke-virtual {v1, v2, v0}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    return-void
.end method

.method private tryConnect(Lch/boye/httpclientandroidlib/impl/client/RoutedRequest;Lch/boye/httpclientandroidlib/protocol/HttpContext;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lch/boye/httpclientandroidlib/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 635
    invoke-virtual {p1}, Lch/boye/httpclientandroidlib/impl/client/RoutedRequest;->getRoute()Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;

    move-result-object v0

    .line 636
    invoke-virtual {p1}, Lch/boye/httpclientandroidlib/impl/client/RoutedRequest;->getRequest()Lch/boye/httpclientandroidlib/impl/client/RequestWrapper;

    move-result-object p1

    const/4 v1, 0x0

    :cond_0
    :goto_0
    const-string v2, "http.request"

    .line 640
    invoke-interface {p2, v2, p1}, Lch/boye/httpclientandroidlib/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    .line 644
    :try_start_0
    iget-object v2, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->managedConn:Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;

    invoke-interface {v2}, Lch/boye/httpclientandroidlib/HttpConnection;->isOpen()Z

    move-result v2

    if-nez v2, :cond_1

    .line 645
    iget-object v2, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->managedConn:Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;

    iget-object v3, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->params:Lch/boye/httpclientandroidlib/params/HttpParams;

    invoke-interface {v2, v0, p2, v3}, Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;->open(Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;Lch/boye/httpclientandroidlib/protocol/HttpContext;Lch/boye/httpclientandroidlib/params/HttpParams;)V

    goto :goto_1

    .line 647
    :cond_1
    iget-object v2, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->managedConn:Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;

    iget-object v3, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->params:Lch/boye/httpclientandroidlib/params/HttpParams;

    invoke-static {v3}, Lch/boye/httpclientandroidlib/params/HttpConnectionParams;->getSoTimeout(Lch/boye/httpclientandroidlib/params/HttpParams;)I

    move-result v3

    invoke-interface {v2, v3}, Lch/boye/httpclientandroidlib/HttpConnection;->setSocketTimeout(I)V

    .line 649
    :goto_1
    invoke-virtual {p0, v0, p2}, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->establishRoute(Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;Lch/boye/httpclientandroidlib/protocol/HttpContext;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v2

    .line 653
    :try_start_1
    iget-object v3, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->managedConn:Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;

    invoke-interface {v3}, Lch/boye/httpclientandroidlib/HttpConnection;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    nop

    .line 656
    :goto_2
    iget-object v3, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->retryHandler:Lch/boye/httpclientandroidlib/client/HttpRequestRetryHandler;

    invoke-interface {v3, v2, v1, p2}, Lch/boye/httpclientandroidlib/client/HttpRequestRetryHandler;->retryRequest(Ljava/io/IOException;ILch/boye/httpclientandroidlib/protocol/HttpContext;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 657
    iget-object v3, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    invoke-virtual {v3}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->isInfoEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 658
    iget-object v3, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "I/O exception ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ") caught when connecting to the target host: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->info(Ljava/lang/Object;)V

    .line 661
    iget-object v3, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    invoke-virtual {v3}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 662
    iget-object v3, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 664
    :cond_2
    iget-object v2, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    const-string v3, "Retrying connect"

    invoke-virtual {v2, v3}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->info(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 667
    :cond_3
    goto :goto_4

    :goto_3
    throw v2

    :goto_4
    goto :goto_3
.end method

.method private tryExecute(Lch/boye/httpclientandroidlib/impl/client/RoutedRequest;Lch/boye/httpclientandroidlib/protocol/HttpContext;)Lch/boye/httpclientandroidlib/HttpResponse;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lch/boye/httpclientandroidlib/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 678
    invoke-virtual {p1}, Lch/boye/httpclientandroidlib/impl/client/RoutedRequest;->getRequest()Lch/boye/httpclientandroidlib/impl/client/RequestWrapper;

    move-result-object v0

    .line 679
    invoke-virtual {p1}, Lch/boye/httpclientandroidlib/impl/client/RoutedRequest;->getRoute()Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;

    move-result-object p1

    const/4 v1, 0x0

    move-object v2, v1

    .line 685
    :goto_0
    iget v3, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->execCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->execCount:I

    .line 687
    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/impl/client/RequestWrapper;->incrementExecCount()V

    .line 688
    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/impl/client/RequestWrapper;->isRepeatable()Z

    move-result v3

    if-nez v3, :cond_1

    .line 689
    iget-object p1, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    const-string p2, "Cannot retry non-repeatable request"

    invoke-virtual {p1, p2}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    if-eqz v2, :cond_0

    .line 691
    new-instance p1, Lch/boye/httpclientandroidlib/client/NonRepeatableRequestException;

    const-string p2, "Cannot retry request with a non-repeatable request entity.  The cause lists the reason the original request failed."

    invoke-direct {p1, p2, v2}, Lch/boye/httpclientandroidlib/client/NonRepeatableRequestException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 695
    :cond_0
    new-instance p1, Lch/boye/httpclientandroidlib/client/NonRepeatableRequestException;

    const-string p2, "Cannot retry request with a non-repeatable request entity."

    invoke-direct {p1, p2}, Lch/boye/httpclientandroidlib/client/NonRepeatableRequestException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 701
    :cond_1
    :try_start_0
    iget-object v2, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->managedConn:Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;

    invoke-interface {v2}, Lch/boye/httpclientandroidlib/HttpConnection;->isOpen()Z

    move-result v2

    if-nez v2, :cond_3

    .line 704
    invoke-virtual {p1}, Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;->isTunnelled()Z

    move-result v2

    if-nez v2, :cond_2

    .line 705
    iget-object v2, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    const-string v3, "Reopening the direct connection."

    invoke-virtual {v2, v3}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    .line 706
    iget-object v2, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->managedConn:Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;

    iget-object v3, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->params:Lch/boye/httpclientandroidlib/params/HttpParams;

    invoke-interface {v2, p1, p2, v3}, Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;->open(Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;Lch/boye/httpclientandroidlib/protocol/HttpContext;Lch/boye/httpclientandroidlib/params/HttpParams;)V

    goto :goto_1

    .line 709
    :cond_2
    iget-object v2, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    const-string v3, "Proxied connection. Need to start over."

    invoke-virtual {v2, v3}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    goto :goto_2

    .line 714
    :cond_3
    :goto_1
    iget-object v2, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    invoke-virtual {v2}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 715
    iget-object v2, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attempt "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->execCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " to execute request"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    .line 717
    :cond_4
    iget-object v2, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->requestExec:Lch/boye/httpclientandroidlib/protocol/HttpRequestExecutor;

    iget-object v3, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->managedConn:Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;

    invoke-virtual {v2, v0, v3, p2}, Lch/boye/httpclientandroidlib/protocol/HttpRequestExecutor;->execute(Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/HttpClientConnection;Lch/boye/httpclientandroidlib/protocol/HttpContext;)Lch/boye/httpclientandroidlib/HttpResponse;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    return-object v1

    :catch_0
    move-exception v2

    .line 721
    iget-object v3, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    const-string v4, "Closing the connection."

    invoke-virtual {v3, v4}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    .line 723
    :try_start_1
    iget-object v3, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->managedConn:Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;

    invoke-interface {v3}, Lch/boye/httpclientandroidlib/HttpConnection;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    nop

    .line 726
    :goto_3
    iget-object v3, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->retryHandler:Lch/boye/httpclientandroidlib/client/HttpRequestRetryHandler;

    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/impl/client/RequestWrapper;->getExecCount()I

    move-result v4

    invoke-interface {v3, v2, v4, p2}, Lch/boye/httpclientandroidlib/client/HttpRequestRetryHandler;->retryRequest(Ljava/io/IOException;ILch/boye/httpclientandroidlib/protocol/HttpContext;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 727
    iget-object v3, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    invoke-virtual {v3}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->isInfoEnabled()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 728
    iget-object v3, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "I/O exception ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ") caught when processing request: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->info(Ljava/lang/Object;)V

    .line 732
    :cond_5
    iget-object v3, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    invoke-virtual {v3}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 733
    iget-object v3, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 735
    :cond_6
    iget-object v3, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    const-string v4, "Retrying request"

    invoke-virtual {v3, v4}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->info(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 738
    :cond_7
    goto :goto_5

    :goto_4
    throw v2

    :goto_5
    goto :goto_4
.end method

.method private wrapRequest(Lch/boye/httpclientandroidlib/HttpRequest;)Lch/boye/httpclientandroidlib/impl/client/RequestWrapper;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lch/boye/httpclientandroidlib/ProtocolException;
        }
    .end annotation

    .line 362
    instance-of v0, p1, Lch/boye/httpclientandroidlib/HttpEntityEnclosingRequest;

    if-eqz v0, :cond_0

    .line 363
    new-instance v0, Lch/boye/httpclientandroidlib/impl/client/EntityEnclosingRequestWrapper;

    check-cast p1, Lch/boye/httpclientandroidlib/HttpEntityEnclosingRequest;

    invoke-direct {v0, p1}, Lch/boye/httpclientandroidlib/impl/client/EntityEnclosingRequestWrapper;-><init>(Lch/boye/httpclientandroidlib/HttpEntityEnclosingRequest;)V

    return-object v0

    .line 366
    :cond_0
    new-instance v0, Lch/boye/httpclientandroidlib/impl/client/RequestWrapper;

    invoke-direct {v0, p1}, Lch/boye/httpclientandroidlib/impl/client/RequestWrapper;-><init>(Lch/boye/httpclientandroidlib/HttpRequest;)V

    return-object v0
.end method


# virtual methods
.method protected createConnectRequest(Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;Lch/boye/httpclientandroidlib/protocol/HttpContext;)Lch/boye/httpclientandroidlib/HttpRequest;
    .locals 2

    .line 1015
    invoke-virtual {p1}, Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;->getTargetHost()Lch/boye/httpclientandroidlib/HttpHost;

    move-result-object p1

    .line 1017
    invoke-virtual {p1}, Lch/boye/httpclientandroidlib/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object p2

    .line 1018
    invoke-virtual {p1}, Lch/boye/httpclientandroidlib/HttpHost;->getPort()I

    move-result v0

    if-gez v0, :cond_0

    .line 1020
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->connManager:Lch/boye/httpclientandroidlib/conn/ClientConnectionManager;

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/conn/ClientConnectionManager;->getSchemeRegistry()Lch/boye/httpclientandroidlib/conn/scheme/SchemeRegistry;

    move-result-object v0

    invoke-virtual {p1}, Lch/boye/httpclientandroidlib/HttpHost;->getSchemeName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lch/boye/httpclientandroidlib/conn/scheme/SchemeRegistry;->getScheme(Ljava/lang/String;)Lch/boye/httpclientandroidlib/conn/scheme/Scheme;

    move-result-object p1

    .line 1022
    invoke-virtual {p1}, Lch/boye/httpclientandroidlib/conn/scheme/Scheme;->getDefaultPort()I

    move-result v0

    .line 1025
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x6

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1026
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p2, 0x3a

    .line 1027
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1028
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1030
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1031
    iget-object p2, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->params:Lch/boye/httpclientandroidlib/params/HttpParams;

    invoke-static {p2}, Lch/boye/httpclientandroidlib/params/HttpProtocolParams;->getVersion(Lch/boye/httpclientandroidlib/params/HttpParams;)Lch/boye/httpclientandroidlib/ProtocolVersion;

    move-result-object p2

    .line 1032
    new-instance v0, Lch/boye/httpclientandroidlib/message/BasicHttpRequest;

    const-string v1, "CONNECT"

    invoke-direct {v0, v1, p1, p2}, Lch/boye/httpclientandroidlib/message/BasicHttpRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Lch/boye/httpclientandroidlib/ProtocolVersion;)V

    return-object v0
.end method

.method protected createTunnelToProxy(Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;ILch/boye/httpclientandroidlib/protocol/HttpContext;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lch/boye/httpclientandroidlib/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 995
    new-instance p1, Lch/boye/httpclientandroidlib/HttpException;

    const-string p2, "Proxy chains are not supported."

    invoke-direct {p1, p2}, Lch/boye/httpclientandroidlib/HttpException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected createTunnelToTarget(Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;Lch/boye/httpclientandroidlib/protocol/HttpContext;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lch/boye/httpclientandroidlib/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 884
    invoke-virtual {p1}, Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;->getProxyHost()Lch/boye/httpclientandroidlib/HttpHost;

    move-result-object v6

    .line 885
    invoke-virtual {p1}, Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;->getTargetHost()Lch/boye/httpclientandroidlib/HttpHost;

    move-result-object v7

    .line 889
    :cond_0
    :goto_0
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->managedConn:Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/HttpConnection;->isOpen()Z

    move-result v0

    if-nez v0, :cond_1

    .line 890
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->managedConn:Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;

    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->params:Lch/boye/httpclientandroidlib/params/HttpParams;

    invoke-interface {v0, p1, p2, v1}, Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;->open(Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;Lch/boye/httpclientandroidlib/protocol/HttpContext;Lch/boye/httpclientandroidlib/params/HttpParams;)V

    .line 893
    :cond_1
    invoke-virtual {p0, p1, p2}, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->createConnectRequest(Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;Lch/boye/httpclientandroidlib/protocol/HttpContext;)Lch/boye/httpclientandroidlib/HttpRequest;

    move-result-object v0

    .line 894
    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->params:Lch/boye/httpclientandroidlib/params/HttpParams;

    invoke-interface {v0, v1}, Lch/boye/httpclientandroidlib/HttpMessage;->setParams(Lch/boye/httpclientandroidlib/params/HttpParams;)V

    const-string v1, "http.target_host"

    .line 897
    invoke-interface {p2, v1, v7}, Lch/boye/httpclientandroidlib/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "http.proxy_host"

    .line 898
    invoke-interface {p2, v1, v6}, Lch/boye/httpclientandroidlib/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 899
    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->managedConn:Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;

    const-string v2, "http.connection"

    invoke-interface {p2, v2, v1}, Lch/boye/httpclientandroidlib/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "http.request"

    .line 900
    invoke-interface {p2, v1, v0}, Lch/boye/httpclientandroidlib/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 902
    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->requestExec:Lch/boye/httpclientandroidlib/protocol/HttpRequestExecutor;

    iget-object v2, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->httpProcessor:Lch/boye/httpclientandroidlib/protocol/HttpProcessor;

    invoke-virtual {v1, v0, v2, p2}, Lch/boye/httpclientandroidlib/protocol/HttpRequestExecutor;->preProcess(Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/protocol/HttpProcessor;Lch/boye/httpclientandroidlib/protocol/HttpContext;)V

    .line 904
    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->requestExec:Lch/boye/httpclientandroidlib/protocol/HttpRequestExecutor;

    iget-object v2, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->managedConn:Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;

    invoke-virtual {v1, v0, v2, p2}, Lch/boye/httpclientandroidlib/protocol/HttpRequestExecutor;->execute(Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/HttpClientConnection;Lch/boye/httpclientandroidlib/protocol/HttpContext;)Lch/boye/httpclientandroidlib/HttpResponse;

    move-result-object v8

    .line 906
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->params:Lch/boye/httpclientandroidlib/params/HttpParams;

    invoke-interface {v8, v0}, Lch/boye/httpclientandroidlib/HttpMessage;->setParams(Lch/boye/httpclientandroidlib/params/HttpParams;)V

    .line 907
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->requestExec:Lch/boye/httpclientandroidlib/protocol/HttpRequestExecutor;

    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->httpProcessor:Lch/boye/httpclientandroidlib/protocol/HttpProcessor;

    invoke-virtual {v0, v8, v1, p2}, Lch/boye/httpclientandroidlib/protocol/HttpRequestExecutor;->postProcess(Lch/boye/httpclientandroidlib/HttpResponse;Lch/boye/httpclientandroidlib/protocol/HttpProcessor;Lch/boye/httpclientandroidlib/protocol/HttpContext;)V

    .line 909
    invoke-interface {v8}, Lch/boye/httpclientandroidlib/HttpResponse;->getStatusLine()Lch/boye/httpclientandroidlib/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/StatusLine;->getStatusCode()I

    move-result v0

    const/16 v1, 0xc8

    if-lt v0, v1, :cond_6

    .line 915
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->params:Lch/boye/httpclientandroidlib/params/HttpParams;

    invoke-static {v0}, Lch/boye/httpclientandroidlib/client/params/HttpClientParams;->isAuthenticating(Lch/boye/httpclientandroidlib/params/HttpParams;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 916
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->authenticator:Lch/boye/httpclientandroidlib/impl/client/HttpAuthenticator;

    iget-object v3, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->proxyAuthStrategy:Lch/boye/httpclientandroidlib/client/AuthenticationStrategy;

    iget-object v4, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->proxyAuthState:Lch/boye/httpclientandroidlib/auth/AuthState;

    move-object v1, v6

    move-object v2, v8

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lch/boye/httpclientandroidlib/impl/client/HttpAuthenticator;->isAuthenticationRequested(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpResponse;Lch/boye/httpclientandroidlib/client/AuthenticationStrategy;Lch/boye/httpclientandroidlib/auth/AuthState;Lch/boye/httpclientandroidlib/protocol/HttpContext;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 918
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->authenticator:Lch/boye/httpclientandroidlib/impl/client/HttpAuthenticator;

    iget-object v3, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->proxyAuthStrategy:Lch/boye/httpclientandroidlib/client/AuthenticationStrategy;

    iget-object v4, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->proxyAuthState:Lch/boye/httpclientandroidlib/auth/AuthState;

    move-object v1, v6

    move-object v2, v8

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lch/boye/httpclientandroidlib/impl/client/HttpAuthenticator;->authenticate(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpResponse;Lch/boye/httpclientandroidlib/client/AuthenticationStrategy;Lch/boye/httpclientandroidlib/auth/AuthState;Lch/boye/httpclientandroidlib/protocol/HttpContext;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 921
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->reuseStrategy:Lch/boye/httpclientandroidlib/ConnectionReuseStrategy;

    invoke-interface {v0, v8, p2}, Lch/boye/httpclientandroidlib/ConnectionReuseStrategy;->keepAlive(Lch/boye/httpclientandroidlib/HttpResponse;Lch/boye/httpclientandroidlib/protocol/HttpContext;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 922
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    const-string v1, "Connection kept alive"

    invoke-virtual {v0, v1}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    .line 924
    invoke-interface {v8}, Lch/boye/httpclientandroidlib/HttpResponse;->getEntity()Lch/boye/httpclientandroidlib/HttpEntity;

    move-result-object v0

    .line 925
    invoke-static {v0}, Lch/boye/httpclientandroidlib/util/EntityUtils;->consume(Lch/boye/httpclientandroidlib/HttpEntity;)V

    goto/16 :goto_0

    .line 927
    :cond_2
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->managedConn:Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/HttpConnection;->close()V

    goto/16 :goto_0

    .line 938
    :cond_3
    invoke-interface {v8}, Lch/boye/httpclientandroidlib/HttpResponse;->getStatusLine()Lch/boye/httpclientandroidlib/StatusLine;

    move-result-object p1

    invoke-interface {p1}, Lch/boye/httpclientandroidlib/StatusLine;->getStatusCode()I

    move-result p1

    const/16 p2, 0x12b

    if-le p1, p2, :cond_5

    .line 943
    invoke-interface {v8}, Lch/boye/httpclientandroidlib/HttpResponse;->getEntity()Lch/boye/httpclientandroidlib/HttpEntity;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 945
    new-instance p2, Lch/boye/httpclientandroidlib/entity/BufferedHttpEntity;

    invoke-direct {p2, p1}, Lch/boye/httpclientandroidlib/entity/BufferedHttpEntity;-><init>(Lch/boye/httpclientandroidlib/HttpEntity;)V

    invoke-interface {v8, p2}, Lch/boye/httpclientandroidlib/HttpResponse;->setEntity(Lch/boye/httpclientandroidlib/HttpEntity;)V

    .line 948
    :cond_4
    iget-object p1, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->managedConn:Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;

    invoke-interface {p1}, Lch/boye/httpclientandroidlib/HttpConnection;->close()V

    .line 949
    new-instance p1, Lch/boye/httpclientandroidlib/impl/client/TunnelRefusedException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "CONNECT refused by proxy: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v8}, Lch/boye/httpclientandroidlib/HttpResponse;->getStatusLine()Lch/boye/httpclientandroidlib/StatusLine;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, v8}, Lch/boye/httpclientandroidlib/impl/client/TunnelRefusedException;-><init>(Ljava/lang/String;Lch/boye/httpclientandroidlib/HttpResponse;)V

    throw p1

    .line 953
    :cond_5
    iget-object p1, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->managedConn:Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;

    invoke-interface {p1}, Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;->markReusable()V

    const/4 p1, 0x0

    return p1

    .line 911
    :cond_6
    new-instance p1, Lch/boye/httpclientandroidlib/HttpException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unexpected response to CONNECT request: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v8}, Lch/boye/httpclientandroidlib/HttpResponse;->getStatusLine()Lch/boye/httpclientandroidlib/StatusLine;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lch/boye/httpclientandroidlib/HttpException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method protected determineRoute(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/protocol/HttpContext;)Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lch/boye/httpclientandroidlib/HttpException;
        }
    .end annotation

    if-nez p1, :cond_0

    .line 785
    invoke-interface {p2}, Lch/boye/httpclientandroidlib/HttpMessage;->getParams()Lch/boye/httpclientandroidlib/params/HttpParams;

    move-result-object p1

    const-string v0, "http.default-host"

    invoke-interface {p1, v0}, Lch/boye/httpclientandroidlib/params/HttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lch/boye/httpclientandroidlib/HttpHost;

    :cond_0
    if-eqz p1, :cond_1

    .line 793
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->routePlanner:Lch/boye/httpclientandroidlib/conn/routing/HttpRoutePlanner;

    invoke-interface {v0, p1, p2, p3}, Lch/boye/httpclientandroidlib/conn/routing/HttpRoutePlanner;->determineRoute(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/protocol/HttpContext;)Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;

    move-result-object p1

    return-object p1

    .line 789
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Target host must not be null, or set in parameters."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected establishRoute(Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;Lch/boye/httpclientandroidlib/protocol/HttpContext;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lch/boye/httpclientandroidlib/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 809
    new-instance v0, Lch/boye/httpclientandroidlib/conn/routing/BasicRouteDirector;

    invoke-direct {v0}, Lch/boye/httpclientandroidlib/conn/routing/BasicRouteDirector;-><init>()V

    .line 812
    :cond_0
    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->managedConn:Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;

    invoke-interface {v1}, Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;->getRoute()Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;

    move-result-object v1

    .line 813
    invoke-interface {v0, p1, v1}, Lch/boye/httpclientandroidlib/conn/routing/HttpRouteDirector;->nextStep(Lch/boye/httpclientandroidlib/conn/routing/RouteInfo;Lch/boye/httpclientandroidlib/conn/routing/RouteInfo;)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 852
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown step indicator "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " from RouteDirector."

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 842
    :pswitch_0
    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->managedConn:Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;

    iget-object v3, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->params:Lch/boye/httpclientandroidlib/params/HttpParams;

    invoke-interface {v1, p2, v3}, Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;->layerProtocol(Lch/boye/httpclientandroidlib/protocol/HttpContext;Lch/boye/httpclientandroidlib/params/HttpParams;)V

    goto :goto_0

    .line 833
    :pswitch_1
    invoke-virtual {v1}, Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;->getHopCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 834
    invoke-virtual {p0, p1, v1, p2}, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->createTunnelToProxy(Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;ILch/boye/httpclientandroidlib/protocol/HttpContext;)Z

    move-result v3

    .line 835
    iget-object v4, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    const-string v5, "Tunnel to proxy created."

    invoke-virtual {v4, v5}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    .line 836
    iget-object v4, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->managedConn:Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;

    invoke-virtual {p1, v1}, Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;->getHopTarget(I)Lch/boye/httpclientandroidlib/HttpHost;

    move-result-object v1

    iget-object v5, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->params:Lch/boye/httpclientandroidlib/params/HttpParams;

    invoke-interface {v4, v1, v3, v5}, Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;->tunnelProxy(Lch/boye/httpclientandroidlib/HttpHost;ZLch/boye/httpclientandroidlib/params/HttpParams;)V

    goto :goto_0

    .line 823
    :pswitch_2
    invoke-virtual {p0, p1, p2}, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->createTunnelToTarget(Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;Lch/boye/httpclientandroidlib/protocol/HttpContext;)Z

    move-result v1

    .line 824
    iget-object v3, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    const-string v4, "Tunnel to target created."

    invoke-virtual {v3, v4}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    .line 825
    iget-object v3, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->managedConn:Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;

    iget-object v4, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->params:Lch/boye/httpclientandroidlib/params/HttpParams;

    invoke-interface {v3, v1, v4}, Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;->tunnelTarget(ZLch/boye/httpclientandroidlib/params/HttpParams;)V

    goto :goto_0

    .line 819
    :pswitch_3
    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->managedConn:Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;

    iget-object v3, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->params:Lch/boye/httpclientandroidlib/params/HttpParams;

    invoke-interface {v1, p1, p2, v3}, Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;->open(Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;Lch/boye/httpclientandroidlib/protocol/HttpContext;Lch/boye/httpclientandroidlib/params/HttpParams;)V

    :goto_0
    :pswitch_4
    if-gtz v2, :cond_0

    return-void

    .line 846
    :pswitch_5
    new-instance p2, Lch/boye/httpclientandroidlib/HttpException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to establish route: planned = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "; current = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lch/boye/httpclientandroidlib/HttpException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p2

    :goto_2
    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public execute(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/protocol/HttpContext;)Lch/boye/httpclientandroidlib/HttpResponse;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lch/boye/httpclientandroidlib/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "http.user-token"

    .line 408
    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->targetAuthState:Lch/boye/httpclientandroidlib/auth/AuthState;

    const-string v2, "http.auth.target-scope"

    invoke-interface {p3, v2, v1}, Lch/boye/httpclientandroidlib/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 409
    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->proxyAuthState:Lch/boye/httpclientandroidlib/auth/AuthState;

    const-string v2, "http.auth.proxy-scope"

    invoke-interface {p3, v2, v1}, Lch/boye/httpclientandroidlib/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 412
    invoke-direct {p0, p2}, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->wrapRequest(Lch/boye/httpclientandroidlib/HttpRequest;)Lch/boye/httpclientandroidlib/impl/client/RequestWrapper;

    move-result-object v1

    .line 413
    iget-object v2, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->params:Lch/boye/httpclientandroidlib/params/HttpParams;

    invoke-virtual {v1, v2}, Lch/boye/httpclientandroidlib/message/AbstractHttpMessage;->setParams(Lch/boye/httpclientandroidlib/params/HttpParams;)V

    .line 414
    invoke-virtual {p0, p1, v1, p3}, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->determineRoute(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/protocol/HttpContext;)Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;

    move-result-object v2

    .line 416
    invoke-virtual {v1}, Lch/boye/httpclientandroidlib/message/AbstractHttpMessage;->getParams()Lch/boye/httpclientandroidlib/params/HttpParams;

    move-result-object v3

    const-string v4, "http.virtual-host"

    invoke-interface {v3, v4}, Lch/boye/httpclientandroidlib/params/HttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lch/boye/httpclientandroidlib/HttpHost;

    iput-object v3, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->virtualHost:Lch/boye/httpclientandroidlib/HttpHost;

    if-eqz v3, :cond_1

    .line 419
    invoke-virtual {v3}, Lch/boye/httpclientandroidlib/HttpHost;->getPort()I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    if-eqz p1, :cond_0

    move-object v3, p1

    goto :goto_0

    .line 420
    :cond_0
    invoke-virtual {v2}, Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;->getTargetHost()Lch/boye/httpclientandroidlib/HttpHost;

    move-result-object v3

    .line 421
    :goto_0
    invoke-virtual {v3}, Lch/boye/httpclientandroidlib/HttpHost;->getPort()I

    move-result v3

    if-eq v3, v4, :cond_1

    .line 423
    new-instance v4, Lch/boye/httpclientandroidlib/HttpHost;

    iget-object v5, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->virtualHost:Lch/boye/httpclientandroidlib/HttpHost;

    invoke-virtual {v5}, Lch/boye/httpclientandroidlib/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->virtualHost:Lch/boye/httpclientandroidlib/HttpHost;

    invoke-virtual {v6}, Lch/boye/httpclientandroidlib/HttpHost;->getSchemeName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v3, v6}, Lch/boye/httpclientandroidlib/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    iput-object v4, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->virtualHost:Lch/boye/httpclientandroidlib/HttpHost;

    .line 427
    :cond_1
    new-instance v3, Lch/boye/httpclientandroidlib/impl/client/RoutedRequest;

    invoke-direct {v3, v1, v2}, Lch/boye/httpclientandroidlib/impl/client/RoutedRequest;-><init>(Lch/boye/httpclientandroidlib/impl/client/RequestWrapper;Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v4, v3

    const/4 v3, 0x0

    :cond_2
    :goto_1
    if-nez v2, :cond_15

    .line 439
    :try_start_0
    invoke-virtual {v4}, Lch/boye/httpclientandroidlib/impl/client/RoutedRequest;->getRequest()Lch/boye/httpclientandroidlib/impl/client/RequestWrapper;

    move-result-object v1

    .line 440
    invoke-virtual {v4}, Lch/boye/httpclientandroidlib/impl/client/RoutedRequest;->getRoute()Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;

    move-result-object v5

    .line 444
    invoke-interface {p3, v0}, Lch/boye/httpclientandroidlib/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 447
    iget-object v7, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->managedConn:Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;

    if-nez v7, :cond_4

    .line 448
    iget-object v7, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->connManager:Lch/boye/httpclientandroidlib/conn/ClientConnectionManager;

    invoke-interface {v7, v5, v6}, Lch/boye/httpclientandroidlib/conn/ClientConnectionManager;->requestConnection(Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;Ljava/lang/Object;)Lch/boye/httpclientandroidlib/conn/ClientConnectionRequest;

    move-result-object v7

    .line 450
    instance-of v8, p2, Lch/boye/httpclientandroidlib/client/methods/AbortableHttpRequest;

    if-eqz v8, :cond_3

    .line 451
    move-object v8, p2

    check-cast v8, Lch/boye/httpclientandroidlib/client/methods/AbortableHttpRequest;

    invoke-interface {v8, v7}, Lch/boye/httpclientandroidlib/client/methods/AbortableHttpRequest;->setConnectionRequest(Lch/boye/httpclientandroidlib/conn/ClientConnectionRequest;)V

    .line 454
    :cond_3
    iget-object v8, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->params:Lch/boye/httpclientandroidlib/params/HttpParams;

    invoke-static {v8}, Lch/boye/httpclientandroidlib/client/params/HttpClientParams;->getConnectionManagerTimeout(Lch/boye/httpclientandroidlib/params/HttpParams;)J

    move-result-wide v8
    :try_end_0
    .catch Lch/boye/httpclientandroidlib/impl/conn/ConnectionShutdownException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Lch/boye/httpclientandroidlib/HttpException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2

    .line 456
    :try_start_1
    sget-object v10, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v7, v8, v9, v10}, Lch/boye/httpclientandroidlib/conn/ClientConnectionRequest;->getConnection(JLjava/util/concurrent/TimeUnit;)Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;

    move-result-object v7

    iput-object v7, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->managedConn:Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lch/boye/httpclientandroidlib/impl/conn/ConnectionShutdownException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Lch/boye/httpclientandroidlib/HttpException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    .line 463
    :try_start_2
    iget-object v7, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->params:Lch/boye/httpclientandroidlib/params/HttpParams;

    invoke-static {v7}, Lch/boye/httpclientandroidlib/params/HttpConnectionParams;->isStaleCheckingEnabled(Lch/boye/httpclientandroidlib/params/HttpParams;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 465
    iget-object v7, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->managedConn:Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;

    invoke-interface {v7}, Lch/boye/httpclientandroidlib/HttpConnection;->isOpen()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 466
    iget-object v7, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    const-string v8, "Stale connection check"

    invoke-virtual {v7, v8}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    .line 467
    iget-object v7, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->managedConn:Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;

    invoke-interface {v7}, Lch/boye/httpclientandroidlib/HttpConnection;->isStale()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 468
    iget-object v7, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    const-string v8, "Stale connection detected"

    invoke-virtual {v7, v8}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    .line 469
    iget-object v7, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->managedConn:Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;

    invoke-interface {v7}, Lch/boye/httpclientandroidlib/HttpConnection;->close()V

    goto :goto_2

    :catch_0
    move-exception p1

    .line 458
    new-instance p2, Ljava/io/InterruptedIOException;

    invoke-direct {p2}, Ljava/io/InterruptedIOException;-><init>()V

    .line 459
    invoke-virtual {p2, p1}, Ljava/io/InterruptedIOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 460
    throw p2

    .line 475
    :cond_4
    :goto_2
    instance-of v7, p2, Lch/boye/httpclientandroidlib/client/methods/AbortableHttpRequest;

    if-eqz v7, :cond_5

    .line 476
    move-object v7, p2

    check-cast v7, Lch/boye/httpclientandroidlib/client/methods/AbortableHttpRequest;

    iget-object v8, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->managedConn:Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;

    invoke-interface {v7, v8}, Lch/boye/httpclientandroidlib/client/methods/AbortableHttpRequest;->setReleaseTrigger(Lch/boye/httpclientandroidlib/conn/ConnectionReleaseTrigger;)V
    :try_end_2
    .catch Lch/boye/httpclientandroidlib/impl/conn/ConnectionShutdownException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Lch/boye/httpclientandroidlib/HttpException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2

    .line 480
    :cond_5
    :try_start_3
    invoke-direct {p0, v4, p3}, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->tryConnect(Lch/boye/httpclientandroidlib/impl/client/RoutedRequest;Lch/boye/httpclientandroidlib/protocol/HttpContext;)V
    :try_end_3
    .catch Lch/boye/httpclientandroidlib/impl/client/TunnelRefusedException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lch/boye/httpclientandroidlib/impl/conn/ConnectionShutdownException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Lch/boye/httpclientandroidlib/HttpException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_2

    .line 489
    :try_start_4
    invoke-virtual {v1}, Lch/boye/httpclientandroidlib/impl/client/RequestWrapper;->getURI()Ljava/net/URI;

    move-result-object v7

    invoke-virtual {v7}, Ljava/net/URI;->getUserInfo()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_6

    .line 491
    iget-object v8, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->targetAuthState:Lch/boye/httpclientandroidlib/auth/AuthState;

    new-instance v9, Lch/boye/httpclientandroidlib/impl/auth/BasicScheme;

    invoke-direct {v9}, Lch/boye/httpclientandroidlib/impl/auth/BasicScheme;-><init>()V

    new-instance v10, Lch/boye/httpclientandroidlib/auth/UsernamePasswordCredentials;

    invoke-direct {v10, v7}, Lch/boye/httpclientandroidlib/auth/UsernamePasswordCredentials;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v9, v10}, Lch/boye/httpclientandroidlib/auth/AuthState;->update(Lch/boye/httpclientandroidlib/auth/AuthScheme;Lch/boye/httpclientandroidlib/auth/Credentials;)V

    .line 495
    :cond_6
    invoke-virtual {v5}, Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;->getProxyHost()Lch/boye/httpclientandroidlib/HttpHost;

    move-result-object v7

    .line 496
    iget-object v8, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->virtualHost:Lch/boye/httpclientandroidlib/HttpHost;

    if-eqz v8, :cond_7

    .line 497
    iget-object p1, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->virtualHost:Lch/boye/httpclientandroidlib/HttpHost;

    goto :goto_3

    .line 499
    :cond_7
    invoke-virtual {v1}, Lch/boye/httpclientandroidlib/impl/client/RequestWrapper;->getURI()Ljava/net/URI;

    move-result-object v8

    .line 500
    invoke-virtual {v8}, Ljava/net/URI;->isAbsolute()Z

    move-result v9

    if-eqz v9, :cond_8

    .line 501
    new-instance p1, Lch/boye/httpclientandroidlib/HttpHost;

    invoke-virtual {v8}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8}, Ljava/net/URI;->getPort()I

    move-result v10

    invoke-virtual {v8}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p1, v9, v10, v8}, Lch/boye/httpclientandroidlib/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    :cond_8
    :goto_3
    if-nez p1, :cond_9

    .line 506
    invoke-virtual {v5}, Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;->getTargetHost()Lch/boye/httpclientandroidlib/HttpHost;

    move-result-object p1

    .line 510
    :cond_9
    invoke-virtual {v1}, Lch/boye/httpclientandroidlib/impl/client/RequestWrapper;->resetHeaders()V

    .line 512
    invoke-virtual {p0, v1, v5}, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->rewriteRequestURI(Lch/boye/httpclientandroidlib/impl/client/RequestWrapper;Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;)V

    const-string v5, "http.target_host"

    .line 515
    invoke-interface {p3, v5, p1}, Lch/boye/httpclientandroidlib/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v5, "http.proxy_host"

    .line 516
    invoke-interface {p3, v5, v7}, Lch/boye/httpclientandroidlib/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v5, "http.connection"

    .line 517
    iget-object v7, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->managedConn:Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;

    invoke-interface {p3, v5, v7}, Lch/boye/httpclientandroidlib/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 520
    iget-object v5, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->requestExec:Lch/boye/httpclientandroidlib/protocol/HttpRequestExecutor;

    iget-object v7, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->httpProcessor:Lch/boye/httpclientandroidlib/protocol/HttpProcessor;

    invoke-virtual {v5, v1, v7, p3}, Lch/boye/httpclientandroidlib/protocol/HttpRequestExecutor;->preProcess(Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/protocol/HttpProcessor;Lch/boye/httpclientandroidlib/protocol/HttpContext;)V

    .line 522
    invoke-direct {p0, v4, p3}, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->tryExecute(Lch/boye/httpclientandroidlib/impl/client/RoutedRequest;Lch/boye/httpclientandroidlib/protocol/HttpContext;)Lch/boye/httpclientandroidlib/HttpResponse;

    move-result-object v1

    if-nez v1, :cond_a

    goto/16 :goto_1

    .line 529
    :cond_a
    iget-object v3, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->params:Lch/boye/httpclientandroidlib/params/HttpParams;

    invoke-interface {v1, v3}, Lch/boye/httpclientandroidlib/HttpMessage;->setParams(Lch/boye/httpclientandroidlib/params/HttpParams;)V

    .line 530
    iget-object v3, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->requestExec:Lch/boye/httpclientandroidlib/protocol/HttpRequestExecutor;

    iget-object v5, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->httpProcessor:Lch/boye/httpclientandroidlib/protocol/HttpProcessor;

    invoke-virtual {v3, v1, v5, p3}, Lch/boye/httpclientandroidlib/protocol/HttpRequestExecutor;->postProcess(Lch/boye/httpclientandroidlib/HttpResponse;Lch/boye/httpclientandroidlib/protocol/HttpProcessor;Lch/boye/httpclientandroidlib/protocol/HttpContext;)V

    .line 534
    iget-object v3, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->reuseStrategy:Lch/boye/httpclientandroidlib/ConnectionReuseStrategy;

    invoke-interface {v3, v1, p3}, Lch/boye/httpclientandroidlib/ConnectionReuseStrategy;->keepAlive(Lch/boye/httpclientandroidlib/HttpResponse;Lch/boye/httpclientandroidlib/protocol/HttpContext;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 537
    iget-object v5, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->keepAliveStrategy:Lch/boye/httpclientandroidlib/conn/ConnectionKeepAliveStrategy;

    invoke-interface {v5, v1, p3}, Lch/boye/httpclientandroidlib/conn/ConnectionKeepAliveStrategy;->getKeepAliveDuration(Lch/boye/httpclientandroidlib/HttpResponse;Lch/boye/httpclientandroidlib/protocol/HttpContext;)J

    move-result-wide v7

    .line 538
    iget-object v5, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    invoke-virtual {v5}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_c

    const-wide/16 v9, 0x0

    cmp-long v5, v7, v9

    if-lez v5, :cond_b

    .line 541
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "for "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, " "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v9, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_4

    :cond_b
    const-string v5, "indefinitely"

    .line 545
    :goto_4
    iget-object v9, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Connection can be kept alive "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v5}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    .line 547
    :cond_c
    iget-object v5, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->managedConn:Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;

    sget-object v9, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v5, v7, v8, v9}, Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;->setIdleDuration(JLjava/util/concurrent/TimeUnit;)V

    .line 550
    :cond_d
    invoke-virtual {p0, v4, v1, p3}, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->handleResponse(Lch/boye/httpclientandroidlib/impl/client/RoutedRequest;Lch/boye/httpclientandroidlib/HttpResponse;Lch/boye/httpclientandroidlib/protocol/HttpContext;)Lch/boye/httpclientandroidlib/impl/client/RoutedRequest;

    move-result-object v5

    if-nez v5, :cond_e

    const/4 v2, 0x1

    goto/16 :goto_6

    :cond_e
    if-eqz v3, :cond_f

    .line 556
    invoke-interface {v1}, Lch/boye/httpclientandroidlib/HttpResponse;->getEntity()Lch/boye/httpclientandroidlib/HttpEntity;

    move-result-object v7

    .line 557
    invoke-static {v7}, Lch/boye/httpclientandroidlib/util/EntityUtils;->consume(Lch/boye/httpclientandroidlib/HttpEntity;)V

    .line 560
    iget-object v7, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->managedConn:Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;

    invoke-interface {v7}, Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;->markReusable()V

    goto :goto_5

    .line 562
    :cond_f
    iget-object v7, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->managedConn:Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;

    invoke-interface {v7}, Lch/boye/httpclientandroidlib/HttpConnection;->close()V

    .line 563
    iget-object v7, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->proxyAuthState:Lch/boye/httpclientandroidlib/auth/AuthState;

    invoke-virtual {v7}, Lch/boye/httpclientandroidlib/auth/AuthState;->getState()Lch/boye/httpclientandroidlib/auth/AuthProtocolState;

    move-result-object v7

    sget-object v8, Lch/boye/httpclientandroidlib/auth/AuthProtocolState;->CHALLENGED:Lch/boye/httpclientandroidlib/auth/AuthProtocolState;

    invoke-virtual {v7, v8}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v7

    if-lez v7, :cond_10

    iget-object v7, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->proxyAuthState:Lch/boye/httpclientandroidlib/auth/AuthState;

    invoke-virtual {v7}, Lch/boye/httpclientandroidlib/auth/AuthState;->getAuthScheme()Lch/boye/httpclientandroidlib/auth/AuthScheme;

    move-result-object v7

    if-eqz v7, :cond_10

    iget-object v7, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->proxyAuthState:Lch/boye/httpclientandroidlib/auth/AuthState;

    invoke-virtual {v7}, Lch/boye/httpclientandroidlib/auth/AuthState;->getAuthScheme()Lch/boye/httpclientandroidlib/auth/AuthScheme;

    move-result-object v7

    invoke-interface {v7}, Lch/boye/httpclientandroidlib/auth/AuthScheme;->isConnectionBased()Z

    move-result v7

    if-eqz v7, :cond_10

    .line 566
    iget-object v7, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    const-string v8, "Resetting proxy auth state"

    invoke-virtual {v7, v8}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    .line 567
    iget-object v7, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->proxyAuthState:Lch/boye/httpclientandroidlib/auth/AuthState;

    invoke-virtual {v7}, Lch/boye/httpclientandroidlib/auth/AuthState;->reset()V

    .line 569
    :cond_10
    iget-object v7, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->targetAuthState:Lch/boye/httpclientandroidlib/auth/AuthState;

    invoke-virtual {v7}, Lch/boye/httpclientandroidlib/auth/AuthState;->getState()Lch/boye/httpclientandroidlib/auth/AuthProtocolState;

    move-result-object v7

    sget-object v8, Lch/boye/httpclientandroidlib/auth/AuthProtocolState;->CHALLENGED:Lch/boye/httpclientandroidlib/auth/AuthProtocolState;

    invoke-virtual {v7, v8}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v7

    if-lez v7, :cond_11

    iget-object v7, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->targetAuthState:Lch/boye/httpclientandroidlib/auth/AuthState;

    invoke-virtual {v7}, Lch/boye/httpclientandroidlib/auth/AuthState;->getAuthScheme()Lch/boye/httpclientandroidlib/auth/AuthScheme;

    move-result-object v7

    if-eqz v7, :cond_11

    iget-object v7, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->targetAuthState:Lch/boye/httpclientandroidlib/auth/AuthState;

    invoke-virtual {v7}, Lch/boye/httpclientandroidlib/auth/AuthState;->getAuthScheme()Lch/boye/httpclientandroidlib/auth/AuthScheme;

    move-result-object v7

    invoke-interface {v7}, Lch/boye/httpclientandroidlib/auth/AuthScheme;->isConnectionBased()Z

    move-result v7

    if-eqz v7, :cond_11

    .line 572
    iget-object v7, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    const-string v8, "Resetting target auth state"

    invoke-virtual {v7, v8}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    .line 573
    iget-object v7, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->targetAuthState:Lch/boye/httpclientandroidlib/auth/AuthState;

    invoke-virtual {v7}, Lch/boye/httpclientandroidlib/auth/AuthState;->reset()V

    .line 577
    :cond_11
    :goto_5
    invoke-virtual {v5}, Lch/boye/httpclientandroidlib/impl/client/RoutedRequest;->getRoute()Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;

    move-result-object v7

    invoke-virtual {v4}, Lch/boye/httpclientandroidlib/impl/client/RoutedRequest;->getRoute()Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;

    move-result-object v4

    invoke-virtual {v7, v4}, Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_12

    .line 578
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->releaseConnection()V

    :cond_12
    move-object v4, v5

    .line 583
    :goto_6
    iget-object v5, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->managedConn:Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;

    if-eqz v5, :cond_2

    if-nez v6, :cond_13

    .line 585
    iget-object v5, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->userTokenHandler:Lch/boye/httpclientandroidlib/client/UserTokenHandler;

    invoke-interface {v5, p3}, Lch/boye/httpclientandroidlib/client/UserTokenHandler;->getUserToken(Lch/boye/httpclientandroidlib/protocol/HttpContext;)Ljava/lang/Object;

    move-result-object v6

    .line 586
    invoke-interface {p3, v0, v6}, Lch/boye/httpclientandroidlib/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_13
    if-eqz v6, :cond_2

    .line 589
    iget-object v5, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->managedConn:Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;

    invoke-interface {v5, v6}, Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;->setState(Ljava/lang/Object;)V

    goto/16 :goto_1

    :catch_1
    move-exception p1

    .line 482
    iget-object p2, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    invoke-virtual {p2}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->isDebugEnabled()Z

    move-result p2

    if-eqz p2, :cond_14

    .line 483
    iget-object p2, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    .line 485
    :cond_14
    invoke-virtual {p1}, Lch/boye/httpclientandroidlib/impl/client/TunnelRefusedException;->getResponse()Lch/boye/httpclientandroidlib/HttpResponse;

    move-result-object v1

    goto :goto_7

    :catch_2
    move-exception p1

    goto :goto_a

    :catch_3
    move-exception p1

    goto :goto_b

    :catch_4
    move-exception p1

    goto :goto_c

    :catch_5
    move-exception p1

    goto :goto_d

    :cond_15
    :goto_7
    if-eqz v1, :cond_17

    .line 597
    invoke-interface {v1}, Lch/boye/httpclientandroidlib/HttpResponse;->getEntity()Lch/boye/httpclientandroidlib/HttpEntity;

    move-result-object p1

    if-eqz p1, :cond_17

    invoke-interface {v1}, Lch/boye/httpclientandroidlib/HttpResponse;->getEntity()Lch/boye/httpclientandroidlib/HttpEntity;

    move-result-object p1

    invoke-interface {p1}, Lch/boye/httpclientandroidlib/HttpEntity;->isStreaming()Z

    move-result p1

    if-nez p1, :cond_16

    goto :goto_8

    .line 605
    :cond_16
    invoke-interface {v1}, Lch/boye/httpclientandroidlib/HttpResponse;->getEntity()Lch/boye/httpclientandroidlib/HttpEntity;

    move-result-object p1

    .line 606
    new-instance p2, Lch/boye/httpclientandroidlib/conn/BasicManagedEntity;

    iget-object p3, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->managedConn:Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;

    invoke-direct {p2, p1, p3, v3}, Lch/boye/httpclientandroidlib/conn/BasicManagedEntity;-><init>(Lch/boye/httpclientandroidlib/HttpEntity;Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;Z)V

    .line 607
    invoke-interface {v1, p2}, Lch/boye/httpclientandroidlib/HttpResponse;->setEntity(Lch/boye/httpclientandroidlib/HttpEntity;)V

    goto :goto_9

    :cond_17
    :goto_8
    if-eqz v3, :cond_18

    .line 601
    iget-object p1, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->managedConn:Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;

    invoke-interface {p1}, Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;->markReusable()V

    .line 602
    :cond_18
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->releaseConnection()V
    :try_end_4
    .catch Lch/boye/httpclientandroidlib/impl/conn/ConnectionShutdownException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Lch/boye/httpclientandroidlib/HttpException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_2

    :goto_9
    return-object v1

    .line 624
    :goto_a
    invoke-direct {p0}, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->abortConnection()V

    .line 625
    throw p1

    .line 621
    :goto_b
    invoke-direct {p0}, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->abortConnection()V

    .line 622
    throw p1

    .line 618
    :goto_c
    invoke-direct {p0}, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->abortConnection()V

    .line 619
    throw p1

    .line 613
    :goto_d
    new-instance p2, Ljava/io/InterruptedIOException;

    const-string p3, "Connection has been shut down"

    invoke-direct {p2, p3}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    .line 615
    invoke-virtual {p2, p1}, Ljava/io/InterruptedIOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 616
    goto :goto_f

    :goto_e
    throw p2

    :goto_f
    goto :goto_e
.end method

.method protected handleResponse(Lch/boye/httpclientandroidlib/impl/client/RoutedRequest;Lch/boye/httpclientandroidlib/HttpResponse;Lch/boye/httpclientandroidlib/protocol/HttpContext;)Lch/boye/httpclientandroidlib/impl/client/RoutedRequest;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lch/boye/httpclientandroidlib/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object v0, p0

    move-object v7, p2

    move-object/from16 v8, p3

    .line 1057
    invoke-virtual {p1}, Lch/boye/httpclientandroidlib/impl/client/RoutedRequest;->getRoute()Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;

    move-result-object v9

    .line 1058
    invoke-virtual {p1}, Lch/boye/httpclientandroidlib/impl/client/RoutedRequest;->getRequest()Lch/boye/httpclientandroidlib/impl/client/RequestWrapper;

    move-result-object v10

    .line 1060
    invoke-virtual {v10}, Lch/boye/httpclientandroidlib/message/AbstractHttpMessage;->getParams()Lch/boye/httpclientandroidlib/params/HttpParams;

    move-result-object v11

    .line 1062
    invoke-static {v11}, Lch/boye/httpclientandroidlib/client/params/HttpClientParams;->isAuthenticating(Lch/boye/httpclientandroidlib/params/HttpParams;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "http.target_host"

    .line 1063
    invoke-interface {v8, v1}, Lch/boye/httpclientandroidlib/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lch/boye/httpclientandroidlib/HttpHost;

    if-nez v1, :cond_0

    .line 1065
    invoke-virtual {v9}, Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;->getTargetHost()Lch/boye/httpclientandroidlib/HttpHost;

    move-result-object v1

    .line 1067
    :cond_0
    invoke-virtual {v1}, Lch/boye/httpclientandroidlib/HttpHost;->getPort()I

    move-result v2

    if-gez v2, :cond_1

    .line 1068
    iget-object v2, v0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->connManager:Lch/boye/httpclientandroidlib/conn/ClientConnectionManager;

    invoke-interface {v2}, Lch/boye/httpclientandroidlib/conn/ClientConnectionManager;->getSchemeRegistry()Lch/boye/httpclientandroidlib/conn/scheme/SchemeRegistry;

    move-result-object v2

    invoke-virtual {v2, v1}, Lch/boye/httpclientandroidlib/conn/scheme/SchemeRegistry;->getScheme(Lch/boye/httpclientandroidlib/HttpHost;)Lch/boye/httpclientandroidlib/conn/scheme/Scheme;

    move-result-object v2

    .line 1069
    new-instance v3, Lch/boye/httpclientandroidlib/HttpHost;

    invoke-virtual {v1}, Lch/boye/httpclientandroidlib/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lch/boye/httpclientandroidlib/conn/scheme/Scheme;->getDefaultPort()I

    move-result v2

    invoke-virtual {v1}, Lch/boye/httpclientandroidlib/HttpHost;->getSchemeName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v4, v2, v1}, Lch/boye/httpclientandroidlib/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    move-object v12, v3

    goto :goto_0

    :cond_1
    move-object v12, v1

    .line 1071
    :goto_0
    iget-object v1, v0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->authenticator:Lch/boye/httpclientandroidlib/impl/client/HttpAuthenticator;

    iget-object v4, v0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->targetAuthStrategy:Lch/boye/httpclientandroidlib/client/AuthenticationStrategy;

    iget-object v5, v0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->targetAuthState:Lch/boye/httpclientandroidlib/auth/AuthState;

    move-object v2, v12

    move-object v3, p2

    move-object/from16 v6, p3

    invoke-virtual/range {v1 .. v6}, Lch/boye/httpclientandroidlib/impl/client/HttpAuthenticator;->isAuthenticationRequested(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpResponse;Lch/boye/httpclientandroidlib/client/AuthenticationStrategy;Lch/boye/httpclientandroidlib/auth/AuthState;Lch/boye/httpclientandroidlib/protocol/HttpContext;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1073
    iget-object v1, v0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->authenticator:Lch/boye/httpclientandroidlib/impl/client/HttpAuthenticator;

    iget-object v4, v0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->targetAuthStrategy:Lch/boye/httpclientandroidlib/client/AuthenticationStrategy;

    iget-object v5, v0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->targetAuthState:Lch/boye/httpclientandroidlib/auth/AuthState;

    move-object v2, v12

    move-object v3, p2

    move-object/from16 v6, p3

    invoke-virtual/range {v1 .. v6}, Lch/boye/httpclientandroidlib/impl/client/HttpAuthenticator;->authenticate(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpResponse;Lch/boye/httpclientandroidlib/client/AuthenticationStrategy;Lch/boye/httpclientandroidlib/auth/AuthState;Lch/boye/httpclientandroidlib/protocol/HttpContext;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-object p1

    .line 1080
    :cond_2
    invoke-virtual {v9}, Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;->getProxyHost()Lch/boye/httpclientandroidlib/HttpHost;

    move-result-object v12

    .line 1081
    iget-object v1, v0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->authenticator:Lch/boye/httpclientandroidlib/impl/client/HttpAuthenticator;

    iget-object v4, v0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->proxyAuthStrategy:Lch/boye/httpclientandroidlib/client/AuthenticationStrategy;

    iget-object v5, v0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->proxyAuthState:Lch/boye/httpclientandroidlib/auth/AuthState;

    move-object v2, v12

    move-object v3, p2

    move-object/from16 v6, p3

    invoke-virtual/range {v1 .. v6}, Lch/boye/httpclientandroidlib/impl/client/HttpAuthenticator;->isAuthenticationRequested(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpResponse;Lch/boye/httpclientandroidlib/client/AuthenticationStrategy;Lch/boye/httpclientandroidlib/auth/AuthState;Lch/boye/httpclientandroidlib/protocol/HttpContext;)Z

    move-result v1

    if-eqz v1, :cond_4

    if-nez v12, :cond_3

    .line 1085
    invoke-virtual {v9}, Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;->getTargetHost()Lch/boye/httpclientandroidlib/HttpHost;

    move-result-object v1

    move-object v2, v1

    goto :goto_1

    :cond_3
    move-object v2, v12

    .line 1087
    :goto_1
    iget-object v1, v0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->authenticator:Lch/boye/httpclientandroidlib/impl/client/HttpAuthenticator;

    iget-object v4, v0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->proxyAuthStrategy:Lch/boye/httpclientandroidlib/client/AuthenticationStrategy;

    iget-object v5, v0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->proxyAuthState:Lch/boye/httpclientandroidlib/auth/AuthState;

    move-object v3, p2

    move-object/from16 v6, p3

    invoke-virtual/range {v1 .. v6}, Lch/boye/httpclientandroidlib/impl/client/HttpAuthenticator;->authenticate(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpResponse;Lch/boye/httpclientandroidlib/client/AuthenticationStrategy;Lch/boye/httpclientandroidlib/auth/AuthState;Lch/boye/httpclientandroidlib/protocol/HttpContext;)Z

    move-result v1

    if-eqz v1, :cond_4

    return-object p1

    .line 1095
    :cond_4
    invoke-static {v11}, Lch/boye/httpclientandroidlib/client/params/HttpClientParams;->isRedirecting(Lch/boye/httpclientandroidlib/params/HttpParams;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_9

    iget-object v1, v0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->redirectStrategy:Lch/boye/httpclientandroidlib/client/RedirectStrategy;

    invoke-interface {v1, v10, p2, v8}, Lch/boye/httpclientandroidlib/client/RedirectStrategy;->isRedirected(Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/HttpResponse;Lch/boye/httpclientandroidlib/protocol/HttpContext;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1098
    iget v1, v0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->redirectCount:I

    iget v3, v0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->maxRedirects:I

    if-ge v1, v3, :cond_8

    add-int/lit8 v1, v1, 0x1

    .line 1102
    iput v1, v0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->redirectCount:I

    .line 1105
    iput-object v2, v0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->virtualHost:Lch/boye/httpclientandroidlib/HttpHost;

    .line 1107
    iget-object v1, v0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->redirectStrategy:Lch/boye/httpclientandroidlib/client/RedirectStrategy;

    invoke-interface {v1, v10, p2, v8}, Lch/boye/httpclientandroidlib/client/RedirectStrategy;->getRedirect(Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/HttpResponse;Lch/boye/httpclientandroidlib/protocol/HttpContext;)Lch/boye/httpclientandroidlib/client/methods/HttpUriRequest;

    move-result-object v1

    .line 1108
    invoke-virtual {v10}, Lch/boye/httpclientandroidlib/impl/client/RequestWrapper;->getOriginal()Lch/boye/httpclientandroidlib/HttpRequest;

    move-result-object v2

    .line 1109
    invoke-interface {v2}, Lch/boye/httpclientandroidlib/HttpMessage;->getAllHeaders()[Lch/boye/httpclientandroidlib/Header;

    move-result-object v2

    invoke-interface {v1, v2}, Lch/boye/httpclientandroidlib/HttpMessage;->setHeaders([Lch/boye/httpclientandroidlib/Header;)V

    .line 1111
    invoke-interface {v1}, Lch/boye/httpclientandroidlib/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v2

    .line 1112
    invoke-static {v2}, Lch/boye/httpclientandroidlib/client/utils/URIUtils;->extractHost(Ljava/net/URI;)Lch/boye/httpclientandroidlib/HttpHost;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 1118
    invoke-virtual {v9}, Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;->getTargetHost()Lch/boye/httpclientandroidlib/HttpHost;

    move-result-object v4

    invoke-virtual {v4, v3}, Lch/boye/httpclientandroidlib/HttpHost;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 1119
    iget-object v4, v0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    const-string v5, "Resetting target auth state"

    invoke-virtual {v4, v5}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    .line 1120
    iget-object v4, v0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->targetAuthState:Lch/boye/httpclientandroidlib/auth/AuthState;

    invoke-virtual {v4}, Lch/boye/httpclientandroidlib/auth/AuthState;->reset()V

    .line 1121
    iget-object v4, v0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->proxyAuthState:Lch/boye/httpclientandroidlib/auth/AuthState;

    invoke-virtual {v4}, Lch/boye/httpclientandroidlib/auth/AuthState;->getAuthScheme()Lch/boye/httpclientandroidlib/auth/AuthScheme;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 1122
    invoke-interface {v4}, Lch/boye/httpclientandroidlib/auth/AuthScheme;->isConnectionBased()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1123
    iget-object v4, v0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    const-string v5, "Resetting proxy auth state"

    invoke-virtual {v4, v5}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    .line 1124
    iget-object v4, v0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->proxyAuthState:Lch/boye/httpclientandroidlib/auth/AuthState;

    invoke-virtual {v4}, Lch/boye/httpclientandroidlib/auth/AuthState;->reset()V

    .line 1128
    :cond_5
    invoke-direct {p0, v1}, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->wrapRequest(Lch/boye/httpclientandroidlib/HttpRequest;)Lch/boye/httpclientandroidlib/impl/client/RequestWrapper;

    move-result-object v1

    .line 1129
    invoke-virtual {v1, v11}, Lch/boye/httpclientandroidlib/message/AbstractHttpMessage;->setParams(Lch/boye/httpclientandroidlib/params/HttpParams;)V

    .line 1131
    invoke-virtual {p0, v3, v1, v8}, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->determineRoute(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/protocol/HttpContext;)Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;

    move-result-object v3

    .line 1132
    new-instance v4, Lch/boye/httpclientandroidlib/impl/client/RoutedRequest;

    invoke-direct {v4, v1, v3}, Lch/boye/httpclientandroidlib/impl/client/RoutedRequest;-><init>(Lch/boye/httpclientandroidlib/impl/client/RequestWrapper;Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;)V

    .line 1134
    iget-object v1, v0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    invoke-virtual {v1}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1135
    iget-object v1, v0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Redirecting to \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\' via "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    :cond_6
    return-object v4

    .line 1114
    :cond_7
    new-instance v1, Lch/boye/httpclientandroidlib/ProtocolException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Redirect URI does not specify a valid host name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lch/boye/httpclientandroidlib/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1099
    :cond_8
    new-instance v1, Lch/boye/httpclientandroidlib/client/RedirectException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Maximum redirects ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->maxRedirects:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ") exceeded"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lch/boye/httpclientandroidlib/client/RedirectException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_9
    return-object v2
.end method

.method protected releaseConnection()V
    .locals 3

    .line 755
    :try_start_0
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->managedConn:Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/conn/ConnectionReleaseTrigger;->releaseConnection()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 757
    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    const-string v2, "IOException releasing connection"

    invoke-virtual {v1, v2, v0}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    :goto_0
    const/4 v0, 0x0

    .line 759
    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->managedConn:Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;

    return-void
.end method

.method protected rewriteRequestURI(Lch/boye/httpclientandroidlib/impl/client/RequestWrapper;Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lch/boye/httpclientandroidlib/ProtocolException;
        }
    .end annotation

    .line 377
    :try_start_0
    invoke-virtual {p1}, Lch/boye/httpclientandroidlib/impl/client/RequestWrapper;->getURI()Ljava/net/URI;

    move-result-object v0

    .line 378
    invoke-virtual {p2}, Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;->getProxyHost()Lch/boye/httpclientandroidlib/HttpHost;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-virtual {p2}, Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;->isTunnelled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 380
    invoke-virtual {v0}, Ljava/net/URI;->isAbsolute()Z

    move-result v1

    if-nez v1, :cond_0

    .line 381
    invoke-virtual {p2}, Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;->getTargetHost()Lch/boye/httpclientandroidlib/HttpHost;

    move-result-object p2

    .line 382
    invoke-static {v0, p2, v2}, Lch/boye/httpclientandroidlib/client/utils/URIUtils;->rewriteURI(Ljava/net/URI;Lch/boye/httpclientandroidlib/HttpHost;Z)Ljava/net/URI;

    move-result-object p2

    goto :goto_0

    .line 384
    :cond_0
    invoke-static {v0}, Lch/boye/httpclientandroidlib/client/utils/URIUtils;->rewriteURI(Ljava/net/URI;)Ljava/net/URI;

    move-result-object p2

    goto :goto_0

    .line 388
    :cond_1
    invoke-virtual {v0}, Ljava/net/URI;->isAbsolute()Z

    move-result p2

    if-eqz p2, :cond_2

    const/4 p2, 0x0

    .line 389
    invoke-static {v0, p2, v2}, Lch/boye/httpclientandroidlib/client/utils/URIUtils;->rewriteURI(Ljava/net/URI;Lch/boye/httpclientandroidlib/HttpHost;Z)Ljava/net/URI;

    move-result-object p2

    goto :goto_0

    .line 391
    :cond_2
    invoke-static {v0}, Lch/boye/httpclientandroidlib/client/utils/URIUtils;->rewriteURI(Ljava/net/URI;)Ljava/net/URI;

    move-result-object p2

    .line 394
    :goto_0
    invoke-virtual {p1, p2}, Lch/boye/httpclientandroidlib/impl/client/RequestWrapper;->setURI(Ljava/net/URI;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p2

    .line 397
    new-instance v0, Lch/boye/httpclientandroidlib/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid URI: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lch/boye/httpclientandroidlib/impl/client/RequestWrapper;->getRequestLine()Lch/boye/httpclientandroidlib/RequestLine;

    move-result-object p1

    invoke-interface {p1}, Lch/boye/httpclientandroidlib/RequestLine;->getUri()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Lch/boye/httpclientandroidlib/ProtocolException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

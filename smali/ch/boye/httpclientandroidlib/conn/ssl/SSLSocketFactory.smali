.class public Lch/boye/httpclientandroidlib/conn/ssl/SSLSocketFactory;
.super Ljava/lang/Object;
.source "SSLSocketFactory.java"

# interfaces
.implements Lch/boye/httpclientandroidlib/conn/scheme/SchemeLayeredSocketFactory;
.implements Lch/boye/httpclientandroidlib/conn/scheme/LayeredSchemeSocketFactory;
.implements Lch/boye/httpclientandroidlib/conn/scheme/LayeredSocketFactory;


# annotations
.annotation build Lch/boye/httpclientandroidlib/annotation/ThreadSafe;
.end annotation


# static fields
.field public static final ALLOW_ALL_HOSTNAME_VERIFIER:Lch/boye/httpclientandroidlib/conn/ssl/X509HostnameVerifier;

.field public static final BROWSER_COMPATIBLE_HOSTNAME_VERIFIER:Lch/boye/httpclientandroidlib/conn/ssl/X509HostnameVerifier;

.field private static final EMPTY_PASSWORD:[C

.field public static final SSL:Ljava/lang/String; = "SSL"

.field public static final SSLV2:Ljava/lang/String; = "SSLv2"

.field public static final STRICT_HOSTNAME_VERIFIER:Lch/boye/httpclientandroidlib/conn/ssl/X509HostnameVerifier;

.field public static final TLS:Ljava/lang/String; = "TLS"


# instance fields
.field private volatile hostnameVerifier:Lch/boye/httpclientandroidlib/conn/ssl/X509HostnameVerifier;

.field private final nameResolver:Lch/boye/httpclientandroidlib/conn/scheme/HostNameResolver;

.field private final socketfactory:Ljavax/net/ssl/SSLSocketFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 157
    new-instance v0, Lch/boye/httpclientandroidlib/conn/ssl/AllowAllHostnameVerifier;

    invoke-direct {v0}, Lch/boye/httpclientandroidlib/conn/ssl/AllowAllHostnameVerifier;-><init>()V

    sput-object v0, Lch/boye/httpclientandroidlib/conn/ssl/SSLSocketFactory;->ALLOW_ALL_HOSTNAME_VERIFIER:Lch/boye/httpclientandroidlib/conn/ssl/X509HostnameVerifier;

    .line 160
    new-instance v0, Lch/boye/httpclientandroidlib/conn/ssl/BrowserCompatHostnameVerifier;

    invoke-direct {v0}, Lch/boye/httpclientandroidlib/conn/ssl/BrowserCompatHostnameVerifier;-><init>()V

    sput-object v0, Lch/boye/httpclientandroidlib/conn/ssl/SSLSocketFactory;->BROWSER_COMPATIBLE_HOSTNAME_VERIFIER:Lch/boye/httpclientandroidlib/conn/ssl/X509HostnameVerifier;

    .line 163
    new-instance v0, Lch/boye/httpclientandroidlib/conn/ssl/StrictHostnameVerifier;

    invoke-direct {v0}, Lch/boye/httpclientandroidlib/conn/ssl/StrictHostnameVerifier;-><init>()V

    sput-object v0, Lch/boye/httpclientandroidlib/conn/ssl/SSLSocketFactory;->STRICT_HOSTNAME_VERIFIER:Lch/boye/httpclientandroidlib/conn/ssl/X509HostnameVerifier;

    const-string v0, ""

    .line 166
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lch/boye/httpclientandroidlib/conn/ssl/SSLSocketFactory;->EMPTY_PASSWORD:[C

    return-void
.end method

.method public constructor <init>(Lch/boye/httpclientandroidlib/conn/ssl/TrustStrategy;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/KeyManagementException;,
            Ljava/security/KeyStoreException;,
            Ljava/security/UnrecoverableKeyException;
        }
    .end annotation

    .line 459
    sget-object v7, Lch/boye/httpclientandroidlib/conn/ssl/SSLSocketFactory;->BROWSER_COMPATIBLE_HOSTNAME_VERIFIER:Lch/boye/httpclientandroidlib/conn/ssl/X509HostnameVerifier;

    const-string v1, "TLS"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v7}, Lch/boye/httpclientandroidlib/conn/ssl/SSLSocketFactory;-><init>(Ljava/lang/String;Ljava/security/KeyStore;Ljava/lang/String;Ljava/security/KeyStore;Ljava/security/SecureRandom;Lch/boye/httpclientandroidlib/conn/ssl/TrustStrategy;Lch/boye/httpclientandroidlib/conn/ssl/X509HostnameVerifier;)V

    return-void
.end method

.method public constructor <init>(Lch/boye/httpclientandroidlib/conn/ssl/TrustStrategy;Lch/boye/httpclientandroidlib/conn/ssl/X509HostnameVerifier;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/KeyManagementException;,
            Ljava/security/KeyStoreException;,
            Ljava/security/UnrecoverableKeyException;
        }
    .end annotation

    const-string v1, "TLS"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v6, p1

    move-object v7, p2

    .line 450
    invoke-direct/range {v0 .. v7}, Lch/boye/httpclientandroidlib/conn/ssl/SSLSocketFactory;-><init>(Ljava/lang/String;Ljava/security/KeyStore;Ljava/lang/String;Ljava/security/KeyStore;Ljava/security/SecureRandom;Lch/boye/httpclientandroidlib/conn/ssl/TrustStrategy;Lch/boye/httpclientandroidlib/conn/ssl/X509HostnameVerifier;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/security/KeyStore;Ljava/lang/String;Ljava/security/KeyStore;Ljava/security/SecureRandom;Lch/boye/httpclientandroidlib/conn/scheme/HostNameResolver;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/KeyManagementException;,
            Ljava/security/KeyStoreException;,
            Ljava/security/UnrecoverableKeyException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v5, 0x0

    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    .line 384
    invoke-static/range {v0 .. v5}, Lch/boye/httpclientandroidlib/conn/ssl/SSLSocketFactory;->createSSLContext(Ljava/lang/String;Ljava/security/KeyStore;Ljava/lang/String;Ljava/security/KeyStore;Ljava/security/SecureRandom;Lch/boye/httpclientandroidlib/conn/ssl/TrustStrategy;)Ljavax/net/ssl/SSLContext;

    move-result-object p1

    invoke-direct {p0, p1, p6}, Lch/boye/httpclientandroidlib/conn/ssl/SSLSocketFactory;-><init>(Ljavax/net/ssl/SSLContext;Lch/boye/httpclientandroidlib/conn/scheme/HostNameResolver;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/security/KeyStore;Ljava/lang/String;Ljava/security/KeyStore;Ljava/security/SecureRandom;Lch/boye/httpclientandroidlib/conn/ssl/TrustStrategy;Lch/boye/httpclientandroidlib/conn/ssl/X509HostnameVerifier;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/KeyManagementException;,
            Ljava/security/KeyStoreException;,
            Ljava/security/UnrecoverableKeyException;
        }
    .end annotation

    .line 417
    invoke-static/range {p1 .. p6}, Lch/boye/httpclientandroidlib/conn/ssl/SSLSocketFactory;->createSSLContext(Ljava/lang/String;Ljava/security/KeyStore;Ljava/lang/String;Ljava/security/KeyStore;Ljava/security/SecureRandom;Lch/boye/httpclientandroidlib/conn/ssl/TrustStrategy;)Ljavax/net/ssl/SSLContext;

    move-result-object p1

    invoke-direct {p0, p1, p7}, Lch/boye/httpclientandroidlib/conn/ssl/SSLSocketFactory;-><init>(Ljavax/net/ssl/SSLContext;Lch/boye/httpclientandroidlib/conn/ssl/X509HostnameVerifier;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/security/KeyStore;Ljava/lang/String;Ljava/security/KeyStore;Ljava/security/SecureRandom;Lch/boye/httpclientandroidlib/conn/ssl/X509HostnameVerifier;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/KeyManagementException;,
            Ljava/security/KeyStoreException;,
            Ljava/security/UnrecoverableKeyException;
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    .line 400
    invoke-static/range {v0 .. v5}, Lch/boye/httpclientandroidlib/conn/ssl/SSLSocketFactory;->createSSLContext(Ljava/lang/String;Ljava/security/KeyStore;Ljava/lang/String;Ljava/security/KeyStore;Ljava/security/SecureRandom;Lch/boye/httpclientandroidlib/conn/ssl/TrustStrategy;)Ljavax/net/ssl/SSLContext;

    move-result-object p1

    invoke-direct {p0, p1, p6}, Lch/boye/httpclientandroidlib/conn/ssl/SSLSocketFactory;-><init>(Ljavax/net/ssl/SSLContext;Lch/boye/httpclientandroidlib/conn/ssl/X509HostnameVerifier;)V

    return-void
.end method

.method public constructor <init>(Ljava/security/KeyStore;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/KeyManagementException;,
            Ljava/security/KeyStoreException;,
            Ljava/security/UnrecoverableKeyException;
        }
    .end annotation

    .line 440
    sget-object v7, Lch/boye/httpclientandroidlib/conn/ssl/SSLSocketFactory;->BROWSER_COMPATIBLE_HOSTNAME_VERIFIER:Lch/boye/httpclientandroidlib/conn/ssl/X509HostnameVerifier;

    const-string v1, "TLS"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v7}, Lch/boye/httpclientandroidlib/conn/ssl/SSLSocketFactory;-><init>(Ljava/lang/String;Ljava/security/KeyStore;Ljava/lang/String;Ljava/security/KeyStore;Ljava/security/SecureRandom;Lch/boye/httpclientandroidlib/conn/ssl/TrustStrategy;Lch/boye/httpclientandroidlib/conn/ssl/X509HostnameVerifier;)V

    return-void
.end method

.method public constructor <init>(Ljava/security/KeyStore;Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/KeyManagementException;,
            Ljava/security/KeyStoreException;,
            Ljava/security/UnrecoverableKeyException;
        }
    .end annotation

    .line 434
    sget-object v7, Lch/boye/httpclientandroidlib/conn/ssl/SSLSocketFactory;->BROWSER_COMPATIBLE_HOSTNAME_VERIFIER:Lch/boye/httpclientandroidlib/conn/ssl/X509HostnameVerifier;

    const-string v1, "TLS"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v7}, Lch/boye/httpclientandroidlib/conn/ssl/SSLSocketFactory;-><init>(Ljava/lang/String;Ljava/security/KeyStore;Ljava/lang/String;Ljava/security/KeyStore;Ljava/security/SecureRandom;Lch/boye/httpclientandroidlib/conn/ssl/TrustStrategy;Lch/boye/httpclientandroidlib/conn/ssl/X509HostnameVerifier;)V

    return-void
.end method

.method public constructor <init>(Ljava/security/KeyStore;Ljava/lang/String;Ljava/security/KeyStore;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/KeyManagementException;,
            Ljava/security/KeyStoreException;,
            Ljava/security/UnrecoverableKeyException;
        }
    .end annotation

    .line 427
    sget-object v7, Lch/boye/httpclientandroidlib/conn/ssl/SSLSocketFactory;->BROWSER_COMPATIBLE_HOSTNAME_VERIFIER:Lch/boye/httpclientandroidlib/conn/ssl/X509HostnameVerifier;

    const-string v1, "TLS"

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v7}, Lch/boye/httpclientandroidlib/conn/ssl/SSLSocketFactory;-><init>(Ljava/lang/String;Ljava/security/KeyStore;Ljava/lang/String;Ljava/security/KeyStore;Ljava/security/SecureRandom;Lch/boye/httpclientandroidlib/conn/ssl/TrustStrategy;Lch/boye/httpclientandroidlib/conn/ssl/X509HostnameVerifier;)V

    return-void
.end method

.method public constructor <init>(Ljavax/net/ssl/SSLContext;)V
    .locals 1

    .line 463
    sget-object v0, Lch/boye/httpclientandroidlib/conn/ssl/SSLSocketFactory;->BROWSER_COMPATIBLE_HOSTNAME_VERIFIER:Lch/boye/httpclientandroidlib/conn/ssl/X509HostnameVerifier;

    invoke-direct {p0, p1, v0}, Lch/boye/httpclientandroidlib/conn/ssl/SSLSocketFactory;-><init>(Ljavax/net/ssl/SSLContext;Lch/boye/httpclientandroidlib/conn/ssl/X509HostnameVerifier;)V

    return-void
.end method

.method public constructor <init>(Ljavax/net/ssl/SSLContext;Lch/boye/httpclientandroidlib/conn/scheme/HostNameResolver;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 472
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 473
    invoke-virtual {p1}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object p1

    iput-object p1, p0, Lch/boye/httpclientandroidlib/conn/ssl/SSLSocketFactory;->socketfactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 474
    sget-object p1, Lch/boye/httpclientandroidlib/conn/ssl/SSLSocketFactory;->BROWSER_COMPATIBLE_HOSTNAME_VERIFIER:Lch/boye/httpclientandroidlib/conn/ssl/X509HostnameVerifier;

    iput-object p1, p0, Lch/boye/httpclientandroidlib/conn/ssl/SSLSocketFactory;->hostnameVerifier:Lch/boye/httpclientandroidlib/conn/ssl/X509HostnameVerifier;

    .line 475
    iput-object p2, p0, Lch/boye/httpclientandroidlib/conn/ssl/SSLSocketFactory;->nameResolver:Lch/boye/httpclientandroidlib/conn/scheme/HostNameResolver;

    return-void
.end method

.method public constructor <init>(Ljavax/net/ssl/SSLContext;Lch/boye/httpclientandroidlib/conn/ssl/X509HostnameVerifier;)V
    .locals 0

    .line 483
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 487
    invoke-virtual {p1}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object p1

    iput-object p1, p0, Lch/boye/httpclientandroidlib/conn/ssl/SSLSocketFactory;->socketfactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 488
    iput-object p2, p0, Lch/boye/httpclientandroidlib/conn/ssl/SSLSocketFactory;->hostnameVerifier:Lch/boye/httpclientandroidlib/conn/ssl/X509HostnameVerifier;

    const/4 p1, 0x0

    .line 489
    iput-object p1, p0, Lch/boye/httpclientandroidlib/conn/ssl/SSLSocketFactory;->nameResolver:Lch/boye/httpclientandroidlib/conn/scheme/HostNameResolver;

    return-void

    .line 485
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "SSL context may not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Ljavax/net/ssl/SSLSocketFactory;Lch/boye/httpclientandroidlib/conn/ssl/X509HostnameVerifier;)V
    .locals 0

    .line 497
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 501
    iput-object p1, p0, Lch/boye/httpclientandroidlib/conn/ssl/SSLSocketFactory;->socketfactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 502
    iput-object p2, p0, Lch/boye/httpclientandroidlib/conn/ssl/SSLSocketFactory;->hostnameVerifier:Lch/boye/httpclientandroidlib/conn/ssl/X509HostnameVerifier;

    const/4 p1, 0x0

    .line 503
    iput-object p1, p0, Lch/boye/httpclientandroidlib/conn/ssl/SSLSocketFactory;->nameResolver:Lch/boye/httpclientandroidlib/conn/scheme/HostNameResolver;

    return-void

    .line 499
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "SSL socket factory may not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static createDefaultSSLContext()Ljavax/net/ssl/SSLContext;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lch/boye/httpclientandroidlib/conn/ssl/SSLInitializationException;
        }
    .end annotation

    :try_start_0
    const-string v0, "TLS"

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 358
    invoke-static/range {v0 .. v5}, Lch/boye/httpclientandroidlib/conn/ssl/SSLSocketFactory;->createSSLContext(Ljava/lang/String;Ljava/security/KeyStore;Ljava/lang/String;Ljava/security/KeyStore;Ljava/security/SecureRandom;Lch/boye/httpclientandroidlib/conn/ssl/TrustStrategy;)Ljavax/net/ssl/SSLContext;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 360
    new-instance v1, Lch/boye/httpclientandroidlib/conn/ssl/SSLInitializationException;

    const-string v2, "Failure initializing default SSL context"

    invoke-direct {v1, v2, v0}, Lch/boye/httpclientandroidlib/conn/ssl/SSLInitializationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static createSSLContext(Ljava/lang/String;Ljava/security/KeyStore;Ljava/lang/String;Ljava/security/KeyStore;Ljava/security/SecureRandom;Lch/boye/httpclientandroidlib/conn/ssl/TrustStrategy;)Ljavax/net/ssl/SSLContext;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/KeyStoreException;,
            Ljava/security/UnrecoverableKeyException;,
            Ljava/security/KeyManagementException;
        }
    .end annotation

    if-nez p0, :cond_0

    const-string p0, "TLS"

    .line 223
    :cond_0
    invoke-static {}, Ljavax/net/ssl/KeyManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljavax/net/ssl/KeyManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/KeyManagerFactory;

    move-result-object v0

    if-eqz p2, :cond_1

    .line 225
    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object p2

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {v0, p1, p2}, Ljavax/net/ssl/KeyManagerFactory;->init(Ljava/security/KeyStore;[C)V

    .line 226
    invoke-virtual {v0}, Ljavax/net/ssl/KeyManagerFactory;->getKeyManagers()[Ljavax/net/ssl/KeyManager;

    move-result-object p1

    .line 227
    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object p2

    .line 229
    invoke-virtual {p2, p3}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    .line 230
    invoke-virtual {p2}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object p2

    if-eqz p2, :cond_3

    if-eqz p5, :cond_3

    const/4 p3, 0x0

    .line 232
    :goto_1
    array-length v0, p2

    if-ge p3, v0, :cond_3

    .line 233
    aget-object v0, p2, p3

    .line 234
    instance-of v1, v0, Ljavax/net/ssl/X509TrustManager;

    if-eqz v1, :cond_2

    .line 235
    new-instance v1, Lch/boye/httpclientandroidlib/conn/ssl/TrustManagerDecorator;

    check-cast v0, Ljavax/net/ssl/X509TrustManager;

    invoke-direct {v1, v0, p5}, Lch/boye/httpclientandroidlib/conn/ssl/TrustManagerDecorator;-><init>(Ljavax/net/ssl/X509TrustManager;Lch/boye/httpclientandroidlib/conn/ssl/TrustStrategy;)V

    aput-object v1, p2, p3

    :cond_2
    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    .line 241
    :cond_3
    invoke-static {p0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object p0

    .line 242
    invoke-virtual {p0, p1, p2, p4}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    return-object p0
.end method

.method private static createSystemSSLContext()Ljavax/net/ssl/SSLContext;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lch/boye/httpclientandroidlib/conn/ssl/SSLInitializationException;
        }
    .end annotation

    :try_start_0
    const-string v0, "TLS"

    const/4 v1, 0x0

    .line 366
    invoke-static {v0, v1}, Lch/boye/httpclientandroidlib/conn/ssl/SSLSocketFactory;->createSystemSSLContext(Ljava/lang/String;Ljava/security/SecureRandom;)Ljavax/net/ssl/SSLContext;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 368
    new-instance v1, Lch/boye/httpclientandroidlib/conn/ssl/SSLInitializationException;

    const-string v2, "Failure initializing default system SSL context"

    invoke-direct {v1, v2, v0}, Lch/boye/httpclientandroidlib/conn/ssl/SSLInitializationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static createSystemSSLContext(Ljava/lang/String;Ljava/security/SecureRandom;)Ljavax/net/ssl/SSLContext;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/KeyStoreException;,
            Ljava/security/cert/CertificateException;,
            Ljava/security/UnrecoverableKeyException;,
            Ljava/security/KeyManagementException;
        }
    .end annotation

    if-nez p0, :cond_0

    const-string p0, "TLS"

    :cond_0
    const-string v0, "ssl.TrustManagerFactory.algorithm"

    .line 255
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 257
    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v0

    :cond_1
    const-string v1, "javax.net.ssl.trustStoreType"

    .line 259
    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    .line 261
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v1

    :cond_2
    const-string v2, "none"

    .line 263
    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_3

    .line 264
    invoke-static {v0}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v0

    goto/16 :goto_3

    :cond_3
    const-string v3, "javax.net.ssl.trustStore"

    .line 267
    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "javax.net.ssl.trustStorePassword"

    if-eqz v3, :cond_6

    .line 269
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 270
    invoke-static {v0}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v0

    const-string v3, "javax.net.ssl.trustStoreProvider"

    .line 271
    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 274
    invoke-static {v1, v3}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v1

    goto :goto_0

    .line 276
    :cond_4
    invoke-static {v1}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v1

    .line 278
    :goto_0
    invoke-static {v5}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 279
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    if-eqz v3, :cond_5

    .line 281
    :try_start_0
    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    goto :goto_1

    :cond_5
    sget-object v3, Lch/boye/httpclientandroidlib/conn/ssl/SSLSocketFactory;->EMPTY_PASSWORD:[C

    :goto_1
    invoke-virtual {v1, v5, v3}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 284
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V

    .line 286
    invoke-virtual {v0, v1}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    goto :goto_3

    :catchall_0
    move-exception p0

    .line 284
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V

    throw p0

    .line 288
    :cond_6
    new-instance v0, Ljava/io/File;

    const-string v1, "java.home"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 289
    new-instance v1, Ljava/io/File;

    const-string v3, "lib/security/jssecacerts"

    invoke-direct {v1, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 290
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_7

    .line 291
    new-instance v1, Ljava/io/File;

    const-string v3, "lib/security/cacerts"

    invoke-direct {v1, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 296
    :cond_7
    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v0

    .line 297
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v3

    .line 298
    invoke-static {v5}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 299
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    if-eqz v5, :cond_8

    .line 301
    :try_start_1
    invoke-virtual {v5}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    goto :goto_2

    :catchall_1
    move-exception p0

    goto/16 :goto_a

    :cond_8
    move-object v1, v4

    :goto_2
    invoke-virtual {v3, v6, v1}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 303
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V

    .line 305
    invoke-virtual {v0, v3}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    :goto_3
    const-string v1, "ssl.KeyManagerFactory.algorithm"

    .line 310
    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_9

    .line 312
    invoke-static {}, Ljavax/net/ssl/KeyManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v1

    :cond_9
    const-string v3, "javax.net.ssl.keyStoreType"

    .line 314
    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_a

    .line 316
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v3

    .line 318
    :cond_a
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 319
    invoke-static {v1}, Ljavax/net/ssl/KeyManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/KeyManagerFactory;

    move-result-object v1

    goto :goto_8

    :cond_b
    const-string v2, "javax.net.ssl.keyStore"

    .line 322
    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_c

    .line 324
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :cond_c
    move-object v5, v4

    :goto_4
    if-eqz v5, :cond_10

    .line 327
    invoke-static {v1}, Ljavax/net/ssl/KeyManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/KeyManagerFactory;

    move-result-object v1

    const-string v2, "javax.net.ssl.keyStoreProvider"

    .line 328
    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_d

    .line 331
    invoke-static {v3, v2}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v2

    goto :goto_5

    .line 333
    :cond_d
    invoke-static {v3}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v2

    :goto_5
    const-string v3, "javax.net.ssl.keyStorePassword"

    .line 335
    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 336
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    if-eqz v3, :cond_e

    .line 338
    :try_start_2
    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    goto :goto_6

    :cond_e
    sget-object v5, Lch/boye/httpclientandroidlib/conn/ssl/SSLSocketFactory;->EMPTY_PASSWORD:[C

    :goto_6
    invoke-virtual {v2, v6, v5}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 341
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V

    if-eqz v3, :cond_f

    .line 343
    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    goto :goto_7

    :cond_f
    sget-object v3, Lch/boye/httpclientandroidlib/conn/ssl/SSLSocketFactory;->EMPTY_PASSWORD:[C

    :goto_7
    invoke-virtual {v1, v2, v3}, Ljavax/net/ssl/KeyManagerFactory;->init(Ljava/security/KeyStore;[C)V

    goto :goto_8

    :catchall_2
    move-exception p0

    .line 341
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V

    throw p0

    :cond_10
    move-object v1, v4

    .line 348
    :goto_8
    invoke-static {p0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object p0

    if-eqz v1, :cond_11

    .line 349
    invoke-virtual {v1}, Ljavax/net/ssl/KeyManagerFactory;->getKeyManagers()[Ljavax/net/ssl/KeyManager;

    move-result-object v1

    goto :goto_9

    :cond_11
    move-object v1, v4

    :goto_9
    if-eqz v0, :cond_12

    invoke-virtual {v0}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v4

    :cond_12
    invoke-virtual {p0, v1, v4, p1}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    return-object p0

    .line 303
    :goto_a
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V

    throw p0
.end method

.method public static getSocketFactory()Lch/boye/httpclientandroidlib/conn/ssl/SSLSocketFactory;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lch/boye/httpclientandroidlib/conn/ssl/SSLInitializationException;
        }
    .end annotation

    .line 175
    new-instance v0, Lch/boye/httpclientandroidlib/conn/ssl/SSLSocketFactory;

    invoke-static {}, Lch/boye/httpclientandroidlib/conn/ssl/SSLSocketFactory;->createDefaultSSLContext()Ljavax/net/ssl/SSLContext;

    move-result-object v1

    invoke-direct {v0, v1}, Lch/boye/httpclientandroidlib/conn/ssl/SSLSocketFactory;-><init>(Ljavax/net/ssl/SSLContext;)V

    return-object v0
.end method

.method public static getSystemSocketFactory()Lch/boye/httpclientandroidlib/conn/ssl/SSLSocketFactory;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lch/boye/httpclientandroidlib/conn/ssl/SSLInitializationException;
        }
    .end annotation

    .line 204
    new-instance v0, Lch/boye/httpclientandroidlib/conn/ssl/SSLSocketFactory;

    invoke-static {}, Lch/boye/httpclientandroidlib/conn/ssl/SSLSocketFactory;->createSystemSSLContext()Ljavax/net/ssl/SSLContext;

    move-result-object v1

    invoke-direct {v0, v1}, Lch/boye/httpclientandroidlib/conn/ssl/SSLSocketFactory;-><init>(Ljavax/net/ssl/SSLContext;)V

    return-object v0
.end method


# virtual methods
.method public connectSocket(Ljava/net/Socket;Ljava/lang/String;ILjava/net/InetAddress;ILch/boye/httpclientandroidlib/params/HttpParams;)Ljava/net/Socket;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/UnknownHostException;,
            Lch/boye/httpclientandroidlib/conn/ConnectTimeoutException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-nez p4, :cond_1

    if-lez p5, :cond_0

    goto :goto_0

    :cond_0
    const/4 p4, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    if-gez p5, :cond_2

    const/4 p5, 0x0

    .line 683
    :cond_2
    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-direct {v0, p4, p5}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    move-object p4, v0

    .line 686
    :goto_1
    iget-object p5, p0, Lch/boye/httpclientandroidlib/conn/ssl/SSLSocketFactory;->nameResolver:Lch/boye/httpclientandroidlib/conn/scheme/HostNameResolver;

    if-eqz p5, :cond_3

    .line 687
    invoke-interface {p5, p2}, Lch/boye/httpclientandroidlib/conn/scheme/HostNameResolver;->resolve(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p5

    goto :goto_2

    .line 689
    :cond_3
    invoke-static {p2}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p5

    .line 691
    :goto_2
    new-instance v0, Lch/boye/httpclientandroidlib/conn/HttpInetSocketAddress;

    new-instance v1, Lch/boye/httpclientandroidlib/HttpHost;

    invoke-direct {v1, p2, p3}, Lch/boye/httpclientandroidlib/HttpHost;-><init>(Ljava/lang/String;I)V

    invoke-direct {v0, v1, p5, p3}, Lch/boye/httpclientandroidlib/conn/HttpInetSocketAddress;-><init>(Lch/boye/httpclientandroidlib/HttpHost;Ljava/net/InetAddress;I)V

    .line 692
    invoke-virtual {p0, p1, v0, p4, p6}, Lch/boye/httpclientandroidlib/conn/ssl/SSLSocketFactory;->connectSocket(Ljava/net/Socket;Ljava/net/InetSocketAddress;Ljava/net/InetSocketAddress;Lch/boye/httpclientandroidlib/params/HttpParams;)Ljava/net/Socket;

    move-result-object p1

    return-object p1
.end method

.method public connectSocket(Ljava/net/Socket;Ljava/net/InetSocketAddress;Ljava/net/InetSocketAddress;Lch/boye/httpclientandroidlib/params/HttpParams;)Ljava/net/Socket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/UnknownHostException;,
            Lch/boye/httpclientandroidlib/conn/ConnectTimeoutException;
        }
    .end annotation

    if-eqz p2, :cond_6

    if-eqz p4, :cond_5

    if-eqz p1, :cond_0

    goto :goto_0

    .line 538
    :cond_0
    iget-object p1, p0, Lch/boye/httpclientandroidlib/conn/ssl/SSLSocketFactory;->socketfactory:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object p1

    :goto_0
    if-eqz p3, :cond_1

    .line 540
    invoke-static {p4}, Lch/boye/httpclientandroidlib/params/HttpConnectionParams;->getSoReuseaddr(Lch/boye/httpclientandroidlib/params/HttpParams;)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/net/Socket;->setReuseAddress(Z)V

    .line 541
    invoke-virtual {p1, p3}, Ljava/net/Socket;->bind(Ljava/net/SocketAddress;)V

    .line 544
    :cond_1
    invoke-static {p4}, Lch/boye/httpclientandroidlib/params/HttpConnectionParams;->getConnectionTimeout(Lch/boye/httpclientandroidlib/params/HttpParams;)I

    move-result p3

    .line 545
    invoke-static {p4}, Lch/boye/httpclientandroidlib/params/HttpConnectionParams;->getSoTimeout(Lch/boye/httpclientandroidlib/params/HttpParams;)I

    move-result p4

    .line 548
    :try_start_0
    invoke-virtual {p1, p4}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 549
    invoke-virtual {p1, p2, p3}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_2

    .line 555
    instance-of p3, p2, Lch/boye/httpclientandroidlib/conn/HttpInetSocketAddress;

    if-eqz p3, :cond_2

    .line 556
    move-object p3, p2

    check-cast p3, Lch/boye/httpclientandroidlib/conn/HttpInetSocketAddress;

    invoke-virtual {p3}, Lch/boye/httpclientandroidlib/conn/HttpInetSocketAddress;->getHttpHost()Lch/boye/httpclientandroidlib/HttpHost;

    move-result-object p3

    invoke-virtual {p3}, Lch/boye/httpclientandroidlib/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object p3

    goto :goto_1

    .line 558
    :cond_2
    invoke-virtual {p2}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object p3

    .line 563
    :goto_1
    instance-of p4, p1, Ljavax/net/ssl/SSLSocket;

    if-eqz p4, :cond_3

    .line 564
    check-cast p1, Ljavax/net/ssl/SSLSocket;

    goto :goto_2

    .line 566
    :cond_3
    invoke-virtual {p2}, Ljava/net/InetSocketAddress;->getPort()I

    move-result p2

    .line 567
    iget-object p4, p0, Lch/boye/httpclientandroidlib/conn/ssl/SSLSocketFactory;->socketfactory:Ljavax/net/ssl/SSLSocketFactory;

    const/4 v0, 0x1

    invoke-virtual {p4, p1, p3, p2, v0}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object p1

    check-cast p1, Ljavax/net/ssl/SSLSocket;

    .line 568
    invoke-virtual {p0, p1}, Lch/boye/httpclientandroidlib/conn/ssl/SSLSocketFactory;->prepareSocket(Ljavax/net/ssl/SSLSocket;)V

    .line 570
    :goto_2
    iget-object p2, p0, Lch/boye/httpclientandroidlib/conn/ssl/SSLSocketFactory;->hostnameVerifier:Lch/boye/httpclientandroidlib/conn/ssl/X509HostnameVerifier;

    if-eqz p2, :cond_4

    .line 572
    :try_start_1
    iget-object p2, p0, Lch/boye/httpclientandroidlib/conn/ssl/SSLSocketFactory;->hostnameVerifier:Lch/boye/httpclientandroidlib/conn/ssl/X509HostnameVerifier;

    invoke-interface {p2, p3, p1}, Lch/boye/httpclientandroidlib/conn/ssl/X509HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSocket;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception p2

    .line 576
    :try_start_2
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 577
    :catch_1
    throw p2

    :cond_4
    :goto_3
    return-object p1

    .line 551
    :catch_2
    new-instance p1, Lch/boye/httpclientandroidlib/conn/ConnectTimeoutException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Connect to "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " timed out"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lch/boye/httpclientandroidlib/conn/ConnectTimeoutException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 536
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "HTTP parameters may not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 533
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Remote address may not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public createLayeredSocket(Ljava/net/Socket;Ljava/lang/String;ILch/boye/httpclientandroidlib/params/HttpParams;)Ljava/net/Socket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 621
    iget-object p4, p0, Lch/boye/httpclientandroidlib/conn/ssl/SSLSocketFactory;->socketfactory:Ljavax/net/ssl/SSLSocketFactory;

    const/4 v0, 0x1

    invoke-virtual {p4, p1, p2, p3, v0}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object p1

    check-cast p1, Ljavax/net/ssl/SSLSocket;

    .line 626
    invoke-virtual {p0, p1}, Lch/boye/httpclientandroidlib/conn/ssl/SSLSocketFactory;->prepareSocket(Ljavax/net/ssl/SSLSocket;)V

    .line 627
    iget-object p3, p0, Lch/boye/httpclientandroidlib/conn/ssl/SSLSocketFactory;->hostnameVerifier:Lch/boye/httpclientandroidlib/conn/ssl/X509HostnameVerifier;

    if-eqz p3, :cond_0

    .line 628
    iget-object p3, p0, Lch/boye/httpclientandroidlib/conn/ssl/SSLSocketFactory;->hostnameVerifier:Lch/boye/httpclientandroidlib/conn/ssl/X509HostnameVerifier;

    invoke-interface {p3, p2, p1}, Lch/boye/httpclientandroidlib/conn/ssl/X509HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSocket;)V

    :cond_0
    return-object p1
.end method

.method public createLayeredSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 642
    iget-object v0, p0, Lch/boye/httpclientandroidlib/conn/ssl/SSLSocketFactory;->socketfactory:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0, p1, p2, p3, p4}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object p1

    check-cast p1, Ljavax/net/ssl/SSLSocket;

    .line 648
    invoke-virtual {p0, p1}, Lch/boye/httpclientandroidlib/conn/ssl/SSLSocketFactory;->prepareSocket(Ljavax/net/ssl/SSLSocket;)V

    .line 649
    iget-object p3, p0, Lch/boye/httpclientandroidlib/conn/ssl/SSLSocketFactory;->hostnameVerifier:Lch/boye/httpclientandroidlib/conn/ssl/X509HostnameVerifier;

    if-eqz p3, :cond_0

    .line 650
    iget-object p3, p0, Lch/boye/httpclientandroidlib/conn/ssl/SSLSocketFactory;->hostnameVerifier:Lch/boye/httpclientandroidlib/conn/ssl/X509HostnameVerifier;

    invoke-interface {p3, p2, p1}, Lch/boye/httpclientandroidlib/conn/ssl/X509HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSocket;)V

    :cond_0
    return-object p1
.end method

.method public createSocket()Ljava/net/Socket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 519
    iget-object v0, p0, Lch/boye/httpclientandroidlib/conn/ssl/SSLSocketFactory;->socketfactory:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/SSLSocket;

    .line 520
    invoke-virtual {p0, v0}, Lch/boye/httpclientandroidlib/conn/ssl/SSLSocketFactory;->prepareSocket(Ljavax/net/ssl/SSLSocket;)V

    return-object v0
.end method

.method public createSocket(Lch/boye/httpclientandroidlib/params/HttpParams;)Ljava/net/Socket;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 512
    iget-object p1, p0, Lch/boye/httpclientandroidlib/conn/ssl/SSLSocketFactory;->socketfactory:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object p1

    check-cast p1, Ljavax/net/ssl/SSLSocket;

    .line 513
    invoke-virtual {p0, p1}, Lch/boye/httpclientandroidlib/conn/ssl/SSLSocketFactory;->prepareSocket(Ljavax/net/ssl/SSLSocket;)V

    return-object p1
.end method

.method public createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 703
    invoke-virtual {p0, p1, p2, p3, p4}, Lch/boye/httpclientandroidlib/conn/ssl/SSLSocketFactory;->createLayeredSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object p1

    return-object p1
.end method

.method public getHostnameVerifier()Lch/boye/httpclientandroidlib/conn/ssl/X509HostnameVerifier;
    .locals 1

    .line 665
    iget-object v0, p0, Lch/boye/httpclientandroidlib/conn/ssl/SSLSocketFactory;->hostnameVerifier:Lch/boye/httpclientandroidlib/conn/ssl/X509HostnameVerifier;

    return-object v0
.end method

.method public isSecure(Ljava/net/Socket;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 603
    instance-of v0, p1, Ljavax/net/ssl/SSLSocket;

    if-eqz v0, :cond_1

    .line 607
    invoke-virtual {p1}, Ljava/net/Socket;->isClosed()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 608
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Socket is closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 604
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Socket not created by this factory"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 600
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Socket may not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected prepareSocket(Ljavax/net/ssl/SSLSocket;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public setHostnameVerifier(Lch/boye/httpclientandroidlib/conn/ssl/X509HostnameVerifier;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p1, :cond_0

    .line 661
    iput-object p1, p0, Lch/boye/httpclientandroidlib/conn/ssl/SSLSocketFactory;->hostnameVerifier:Lch/boye/httpclientandroidlib/conn/ssl/X509HostnameVerifier;

    return-void

    .line 659
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Hostname verifier may not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

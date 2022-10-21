.class public Lch/boye/httpclientandroidlib/client/utils/HttpClientUtils;
.super Ljava/lang/Object;
.source "HttpClientUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static closeQuietly(Lch/boye/httpclientandroidlib/HttpResponse;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 70
    invoke-interface {p0}, Lch/boye/httpclientandroidlib/HttpResponse;->getEntity()Lch/boye/httpclientandroidlib/HttpEntity;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 73
    :try_start_0
    invoke-static {p0}, Lch/boye/httpclientandroidlib/util/EntityUtils;->consume(Lch/boye/httpclientandroidlib/HttpEntity;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public static closeQuietly(Lch/boye/httpclientandroidlib/client/HttpClient;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 103
    invoke-interface {p0}, Lch/boye/httpclientandroidlib/client/HttpClient;->getConnectionManager()Lch/boye/httpclientandroidlib/conn/ClientConnectionManager;

    move-result-object p0

    invoke-interface {p0}, Lch/boye/httpclientandroidlib/conn/ClientConnectionManager;->shutdown()V

    :cond_0
    return-void
.end method

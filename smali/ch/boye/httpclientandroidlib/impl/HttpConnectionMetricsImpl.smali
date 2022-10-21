.class public Lch/boye/httpclientandroidlib/impl/HttpConnectionMetricsImpl;
.super Ljava/lang/Object;
.source "HttpConnectionMetricsImpl.java"

# interfaces
.implements Lch/boye/httpclientandroidlib/HttpConnectionMetrics;


# annotations
.annotation build Lch/boye/httpclientandroidlib/annotation/NotThreadSafe;
.end annotation


# static fields
.field public static final RECEIVED_BYTES_COUNT:Ljava/lang/String; = "http.received-bytes-count"

.field public static final REQUEST_COUNT:Ljava/lang/String; = "http.request-count"

.field public static final RESPONSE_COUNT:Ljava/lang/String; = "http.response-count"

.field public static final SENT_BYTES_COUNT:Ljava/lang/String; = "http.sent-bytes-count"


# instance fields
.field private final inTransportMetric:Lch/boye/httpclientandroidlib/io/HttpTransportMetrics;

.field private metricsCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final outTransportMetric:Lch/boye/httpclientandroidlib/io/HttpTransportMetrics;

.field private requestCount:J

.field private responseCount:J


# direct methods
.method public constructor <init>(Lch/boye/httpclientandroidlib/io/HttpTransportMetrics;Lch/boye/httpclientandroidlib/io/HttpTransportMetrics;)V
    .locals 2

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 52
    iput-wide v0, p0, Lch/boye/httpclientandroidlib/impl/HttpConnectionMetricsImpl;->requestCount:J

    .line 53
    iput-wide v0, p0, Lch/boye/httpclientandroidlib/impl/HttpConnectionMetricsImpl;->responseCount:J

    .line 64
    iput-object p1, p0, Lch/boye/httpclientandroidlib/impl/HttpConnectionMetricsImpl;->inTransportMetric:Lch/boye/httpclientandroidlib/io/HttpTransportMetrics;

    .line 65
    iput-object p2, p0, Lch/boye/httpclientandroidlib/impl/HttpConnectionMetricsImpl;->outTransportMetric:Lch/boye/httpclientandroidlib/io/HttpTransportMetrics;

    return-void
.end method


# virtual methods
.method public getMetric(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3

    .line 104
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/HttpConnectionMetricsImpl;->metricsCache:Ljava/util/Map;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 105
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-nez v0, :cond_6

    const-string v2, "http.request-count"

    .line 108
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 109
    new-instance v0, Ljava/lang/Long;

    iget-wide v1, p0, Lch/boye/httpclientandroidlib/impl/HttpConnectionMetricsImpl;->requestCount:J

    invoke-direct {v0, v1, v2}, Ljava/lang/Long;-><init>(J)V

    goto :goto_1

    :cond_1
    const-string v2, "http.response-count"

    .line 110
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 111
    new-instance v0, Ljava/lang/Long;

    iget-wide v1, p0, Lch/boye/httpclientandroidlib/impl/HttpConnectionMetricsImpl;->responseCount:J

    invoke-direct {v0, v1, v2}, Ljava/lang/Long;-><init>(J)V

    goto :goto_1

    :cond_2
    const-string v2, "http.received-bytes-count"

    .line 112
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 113
    iget-object p1, p0, Lch/boye/httpclientandroidlib/impl/HttpConnectionMetricsImpl;->inTransportMetric:Lch/boye/httpclientandroidlib/io/HttpTransportMetrics;

    if-eqz p1, :cond_3

    .line 114
    new-instance p1, Ljava/lang/Long;

    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/HttpConnectionMetricsImpl;->inTransportMetric:Lch/boye/httpclientandroidlib/io/HttpTransportMetrics;

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/io/HttpTransportMetrics;->getBytesTransferred()J

    move-result-wide v0

    invoke-direct {p1, v0, v1}, Ljava/lang/Long;-><init>(J)V

    return-object p1

    :cond_3
    return-object v1

    :cond_4
    const-string v2, "http.sent-bytes-count"

    .line 118
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 119
    iget-object p1, p0, Lch/boye/httpclientandroidlib/impl/HttpConnectionMetricsImpl;->outTransportMetric:Lch/boye/httpclientandroidlib/io/HttpTransportMetrics;

    if-eqz p1, :cond_5

    .line 120
    new-instance p1, Ljava/lang/Long;

    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/HttpConnectionMetricsImpl;->outTransportMetric:Lch/boye/httpclientandroidlib/io/HttpTransportMetrics;

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/io/HttpTransportMetrics;->getBytesTransferred()J

    move-result-wide v0

    invoke-direct {p1, v0, v1}, Ljava/lang/Long;-><init>(J)V

    return-object p1

    :cond_5
    return-object v1

    :cond_6
    :goto_1
    return-object v0
.end method

.method public getReceivedBytesCount()J
    .locals 2

    .line 71
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/HttpConnectionMetricsImpl;->inTransportMetric:Lch/boye/httpclientandroidlib/io/HttpTransportMetrics;

    if-eqz v0, :cond_0

    .line 72
    invoke-interface {v0}, Lch/boye/httpclientandroidlib/io/HttpTransportMetrics;->getBytesTransferred()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getRequestCount()J
    .locals 2

    .line 87
    iget-wide v0, p0, Lch/boye/httpclientandroidlib/impl/HttpConnectionMetricsImpl;->requestCount:J

    return-wide v0
.end method

.method public getResponseCount()J
    .locals 2

    .line 95
    iget-wide v0, p0, Lch/boye/httpclientandroidlib/impl/HttpConnectionMetricsImpl;->responseCount:J

    return-wide v0
.end method

.method public getSentBytesCount()J
    .locals 2

    .line 79
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/HttpConnectionMetricsImpl;->outTransportMetric:Lch/boye/httpclientandroidlib/io/HttpTransportMetrics;

    if-eqz v0, :cond_0

    .line 80
    invoke-interface {v0}, Lch/boye/httpclientandroidlib/io/HttpTransportMetrics;->getBytesTransferred()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public incrementRequestCount()V
    .locals 4

    .line 91
    iget-wide v0, p0, Lch/boye/httpclientandroidlib/impl/HttpConnectionMetricsImpl;->requestCount:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lch/boye/httpclientandroidlib/impl/HttpConnectionMetricsImpl;->requestCount:J

    return-void
.end method

.method public incrementResponseCount()V
    .locals 4

    .line 99
    iget-wide v0, p0, Lch/boye/httpclientandroidlib/impl/HttpConnectionMetricsImpl;->responseCount:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lch/boye/httpclientandroidlib/impl/HttpConnectionMetricsImpl;->responseCount:J

    return-void
.end method

.method public reset()V
    .locals 2

    .line 137
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/HttpConnectionMetricsImpl;->outTransportMetric:Lch/boye/httpclientandroidlib/io/HttpTransportMetrics;

    if-eqz v0, :cond_0

    .line 138
    invoke-interface {v0}, Lch/boye/httpclientandroidlib/io/HttpTransportMetrics;->reset()V

    .line 140
    :cond_0
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/HttpConnectionMetricsImpl;->inTransportMetric:Lch/boye/httpclientandroidlib/io/HttpTransportMetrics;

    if-eqz v0, :cond_1

    .line 141
    invoke-interface {v0}, Lch/boye/httpclientandroidlib/io/HttpTransportMetrics;->reset()V

    :cond_1
    const-wide/16 v0, 0x0

    .line 143
    iput-wide v0, p0, Lch/boye/httpclientandroidlib/impl/HttpConnectionMetricsImpl;->requestCount:J

    .line 144
    iput-wide v0, p0, Lch/boye/httpclientandroidlib/impl/HttpConnectionMetricsImpl;->responseCount:J

    const/4 v0, 0x0

    .line 145
    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/HttpConnectionMetricsImpl;->metricsCache:Ljava/util/Map;

    return-void
.end method

.method public setMetric(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 130
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/HttpConnectionMetricsImpl;->metricsCache:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 131
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/HttpConnectionMetricsImpl;->metricsCache:Ljava/util/Map;

    .line 133
    :cond_0
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/HttpConnectionMetricsImpl;->metricsCache:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

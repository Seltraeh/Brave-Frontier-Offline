.class Lcom/facebook/internal/logging/monitor/MetricsUtil$TempMetrics;
.super Ljava/lang/Object;
.source "MetricsUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/internal/logging/monitor/MetricsUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TempMetrics"
.end annotation


# instance fields
.field private timeStart:J


# direct methods
.method constructor <init>(J)V
    .locals 0

    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 177
    iput-wide p1, p0, Lcom/facebook/internal/logging/monitor/MetricsUtil$TempMetrics;->timeStart:J

    return-void
.end method

.method static synthetic access$000(Lcom/facebook/internal/logging/monitor/MetricsUtil$TempMetrics;)J
    .locals 2

    .line 173
    iget-wide v0, p0, Lcom/facebook/internal/logging/monitor/MetricsUtil$TempMetrics;->timeStart:J

    return-wide v0
.end method

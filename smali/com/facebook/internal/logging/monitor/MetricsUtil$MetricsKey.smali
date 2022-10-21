.class Lcom/facebook/internal/logging/monitor/MetricsUtil$MetricsKey;
.super Ljava/lang/Object;
.source "MetricsUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/internal/logging/monitor/MetricsUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MetricsKey"
.end annotation


# instance fields
.field private extraId:J

.field private performanceEventName:Lcom/facebook/internal/logging/monitor/PerformanceEventName;


# direct methods
.method constructor <init>(Lcom/facebook/internal/logging/monitor/PerformanceEventName;J)V
    .locals 0

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    iput-object p1, p0, Lcom/facebook/internal/logging/monitor/MetricsUtil$MetricsKey;->performanceEventName:Lcom/facebook/internal/logging/monitor/PerformanceEventName;

    .line 148
    iput-wide p2, p0, Lcom/facebook/internal/logging/monitor/MetricsUtil$MetricsKey;->extraId:J

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 156
    const-class v2, Lcom/facebook/internal/logging/monitor/MetricsUtil$MetricsKey;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 159
    :cond_1
    check-cast p1, Lcom/facebook/internal/logging/monitor/MetricsUtil$MetricsKey;

    .line 160
    iget-wide v2, p0, Lcom/facebook/internal/logging/monitor/MetricsUtil$MetricsKey;->extraId:J

    iget-wide v4, p1, Lcom/facebook/internal/logging/monitor/MetricsUtil$MetricsKey;->extraId:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_2

    iget-object v2, p0, Lcom/facebook/internal/logging/monitor/MetricsUtil$MetricsKey;->performanceEventName:Lcom/facebook/internal/logging/monitor/PerformanceEventName;

    iget-object p1, p1, Lcom/facebook/internal/logging/monitor/MetricsUtil$MetricsKey;->performanceEventName:Lcom/facebook/internal/logging/monitor/PerformanceEventName;

    if-ne v2, p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 6

    .line 166
    iget-object v0, p0, Lcom/facebook/internal/logging/monitor/MetricsUtil$MetricsKey;->performanceEventName:Lcom/facebook/internal/logging/monitor/PerformanceEventName;

    invoke-virtual {v0}, Ljava/lang/Enum;->hashCode()I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 167
    iget-wide v2, p0, Lcom/facebook/internal/logging/monitor/MetricsUtil$MetricsKey;->extraId:J

    const/16 v0, 0x20

    ushr-long v4, v2, v0

    xor-long/2addr v2, v4

    long-to-int v0, v2

    add-int/2addr v1, v0

    return v1
.end method

.class public Lcom/vungle/warren/model/VisionData;
.super Ljava/lang/Object;
.source "VisionData.java"


# instance fields
.field public advertiser:Ljava/lang/String;

.field public campaign:Ljava/lang/String;

.field public creative:Ljava/lang/String;

.field public timestamp:J


# direct methods
.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-wide p1, p0, Lcom/vungle/warren/model/VisionData;->timestamp:J

    .line 15
    iput-object p3, p0, Lcom/vungle/warren/model/VisionData;->creative:Ljava/lang/String;

    .line 16
    iput-object p4, p0, Lcom/vungle/warren/model/VisionData;->campaign:Ljava/lang/String;

    .line 17
    iput-object p5, p0, Lcom/vungle/warren/model/VisionData;->advertiser:Ljava/lang/String;

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

    if-eqz p1, :cond_9

    .line 23
    const-class v2, Lcom/vungle/warren/model/VisionData;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_3

    .line 25
    :cond_1
    check-cast p1, Lcom/vungle/warren/model/VisionData;

    .line 27
    iget-wide v2, p0, Lcom/vungle/warren/model/VisionData;->timestamp:J

    iget-wide v4, p1, Lcom/vungle/warren/model/VisionData;->timestamp:J

    cmp-long v6, v2, v4

    if-eqz v6, :cond_2

    return v1

    .line 28
    :cond_2
    iget-object v2, p0, Lcom/vungle/warren/model/VisionData;->creative:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v3, p1, Lcom/vungle/warren/model/VisionData;->creative:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_0

    :cond_3
    iget-object v2, p1, Lcom/vungle/warren/model/VisionData;->creative:Ljava/lang/String;

    if-eqz v2, :cond_4

    :goto_0
    return v1

    .line 30
    :cond_4
    iget-object v2, p0, Lcom/vungle/warren/model/VisionData;->campaign:Ljava/lang/String;

    if-eqz v2, :cond_5

    iget-object v3, p1, Lcom/vungle/warren/model/VisionData;->campaign:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    goto :goto_1

    :cond_5
    iget-object v2, p1, Lcom/vungle/warren/model/VisionData;->campaign:Ljava/lang/String;

    if-eqz v2, :cond_6

    :goto_1
    return v1

    .line 32
    :cond_6
    iget-object v2, p0, Lcom/vungle/warren/model/VisionData;->advertiser:Ljava/lang/String;

    iget-object p1, p1, Lcom/vungle/warren/model/VisionData;->advertiser:Ljava/lang/String;

    if-eqz v2, :cond_7

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_2

    :cond_7
    if-nez p1, :cond_8

    goto :goto_2

    :cond_8
    const/4 v0, 0x0

    :goto_2
    return v0

    :cond_9
    :goto_3
    return v1
.end method

.method public hashCode()I
    .locals 4

    .line 37
    iget-wide v0, p0, Lcom/vungle/warren/model/VisionData;->timestamp:J

    const/16 v2, 0x20

    ushr-long v2, v0, v2

    xor-long/2addr v0, v2

    long-to-int v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 38
    iget-object v0, p0, Lcom/vungle/warren/model/VisionData;->creative:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 39
    iget-object v0, p0, Lcom/vungle/warren/model/VisionData;->campaign:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 40
    iget-object v0, p0, Lcom/vungle/warren/model/VisionData;->advertiser:Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    :cond_2
    add-int/2addr v1, v2

    return v1
.end method

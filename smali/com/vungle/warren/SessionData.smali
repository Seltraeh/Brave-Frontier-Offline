.class public Lcom/vungle/warren/SessionData;
.super Ljava/lang/Object;
.source "SessionData.java"


# instance fields
.field private initTime:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInitTimeStamp()J
    .locals 2

    .line 12
    iget-wide v0, p0, Lcom/vungle/warren/SessionData;->initTime:J

    return-wide v0
.end method

.method public setInitTimeStamp(J)V
    .locals 0

    .line 8
    iput-wide p1, p0, Lcom/vungle/warren/SessionData;->initTime:J

    return-void
.end method

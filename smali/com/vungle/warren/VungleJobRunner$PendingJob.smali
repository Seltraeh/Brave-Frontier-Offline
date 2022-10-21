.class Lcom/vungle/warren/VungleJobRunner$PendingJob;
.super Ljava/lang/Object;
.source "VungleJobRunner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/warren/VungleJobRunner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PendingJob"
.end annotation


# instance fields
.field info:Lcom/vungle/warren/tasks/JobInfo;

.field private final uptimeMillis:J


# direct methods
.method constructor <init>(JLcom/vungle/warren/tasks/JobInfo;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-wide p1, p0, Lcom/vungle/warren/VungleJobRunner$PendingJob;->uptimeMillis:J

    .line 44
    iput-object p3, p0, Lcom/vungle/warren/VungleJobRunner$PendingJob;->info:Lcom/vungle/warren/tasks/JobInfo;

    return-void
.end method

.method static synthetic access$100(Lcom/vungle/warren/VungleJobRunner$PendingJob;)J
    .locals 2

    .line 38
    iget-wide v0, p0, Lcom/vungle/warren/VungleJobRunner$PendingJob;->uptimeMillis:J

    return-wide v0
.end method
